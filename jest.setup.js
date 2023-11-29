import { jest } from '@jest/globals';
import configureStore from 'redux-mock-store';

const mockStore = configureStore();

global.store = mockStore({
  intl: {
    locale: 'en',
    messages: {},
  },
  content: {
    create: {},
    subrequests: [],
  },
  connected_data_parameters: {},
});

const mockSemanticComponents = jest.requireActual('semantic-ui-react');
const mockComponents = jest.requireActual('@plone/volto/components');

jest.mock('semantic-ui-react', () => ({
  ...mockSemanticComponents,
  Popup: ({ content, trigger }) => {
    return (
      <div className="popup">
        <div className="trigger">{trigger}</div>
        <div className="content">{content}</div>
      </div>
    );
  },
}));

jest.doMock('@plone/volto/components', () => {
  return {
    __esModule: true,
    ...mockComponents,
    Toast: ({ children }) => <div className="toast">{children}</div>,
    SidebarPortal: ({ children }) => <div id="sidebar">{children}</div>,
    UniversalLink: ({ children, href }) => {
      return <a href={href}>{children}</a>;
    },
  };
});

jest.doMock('@plone/volto-slate/editor/render', () => ({
  __esModule: true,
  serializeNodes: (nodes) => {
    return nodes.map((node, index) => {
      const Tag = node.type || 'p';
      return (
        <Tag key={`node-${index}`}>
          {node.children.map((item, index) => (
            <span key={`item-${index}`}>{item.text}</span>
          ))}
        </Tag>
      );
    });
  },
  serializeNodesToText: (nodes) => {
    return nodes
      .reduce((texts, node) => {
        if (node.children) {
          node.children.forEach((item) => {
            texts.push(item.text);
          });
        }
        return texts;
      }, [])
      .join('');
  },
}));

global.fetch = jest.fn(() =>
  Promise.resolve({
    json: () => Promise.resolve({}),
  }),
);
