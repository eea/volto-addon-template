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
  },
  connected_data_parameters: {},
});

const mockComponents = jest.requireActual('@plone/volto/components');

jest.doMock('@plone/volto/components', () => {
  return {
    __esModule: true,
    ...mockComponents,
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
