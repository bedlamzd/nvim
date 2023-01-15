local snippets = {}
local autosnippets = {}

---@diagnostic disable-next-line: unused-function, unused-local
local function add_snip(snippet)
    table.insert(snippets, snippet)
end

---@diagnostic disable-next-line: unused-function, unused-local
local function add_autosnip(snippet)
    table.insert(autosnippets, snippet)
end

-- Shortcuts taken directly from luasnip docs
-- s = ls.snippet
-- sn = ls.snippet_node
-- isn = ls.indent_snippet_node
-- t = ls.text_node
-- i = ls.insert_node
-- f = ls.function_node
-- c = ls.choice_node
-- d = ls.dynamic_node
-- r = ls.restore_node
-- events = require("luasnip.util.events")
-- ai = require("luasnip.nodes.absolute_indexer")
-- extras = require("luasnip.extras")
-- l = extras.lambda
-- rep = extras.rep
-- p = extras.partial
-- m = extras.match
-- n = extras.nonempty
-- dl = extras.dynamic_lambda
-- fmt = require("luasnip.extras.fmt").fmt
-- fmta = require("luasnip.extras.fmt").fmta
-- conds = require("luasnip.extras.expand_conditions")
-- postfix = require("luasnip.extras.postfix").postfix
-- types = require("luasnip.util.types")
-- parse = require("luasnip.util.parser").parse_snippet

add_snip(
    s(
        {
            trig = 'snip',
            dscr = 'Snippets file template',
        },
        fmt(
            [[
            local snippets = {{}}
            local autosnippets = {{}}

            ---@diagnostic disable-next-line: unused-function, unused-local
            local function add_snip(snippet)
                table.insert(snippets, snippet)
            end

            ---@diagnostic disable-next-line: unused-function, unused-local
            local function add_autosnip(snippet)
                table.insert(autosnippets, snippet)
            end

            -- Shortcuts taken directly from luasnip docs
            -- s = ls.snippet
            -- sn = ls.snippet_node
            -- isn = ls.indent_snippet_node
            -- t = ls.text_node
            -- i = ls.insert_node
            -- f = ls.function_node
            -- c = ls.choice_node
            -- d = ls.dynamic_node
            -- r = ls.restore_node
            -- events = require("luasnip.util.events")
            -- ai = require("luasnip.nodes.absolute_indexer")
            -- extras = require("luasnip.extras")
            -- l = extras.lambda
            -- rep = extras.rep
            -- p = extras.partial
            -- m = extras.match
            -- n = extras.nonempty
            -- dl = extras.dynamic_lambda
            -- fmt = require("luasnip.extras.fmt").fmt
            -- fmta = require("luasnip.extras.fmt").fmta
            -- conds = require("luasnip.extras.expand_conditions")
            -- postfix = require("luasnip.extras.postfix").postfix
            -- types = require("luasnip.util.types")
            -- parse = require("luasnip.util.parser").parse_snippet

            {}

            return snippets, autosnippets
            ]],
            { i(0), }
        )
    )
)

add_snip(
    s(
        {
            trig = 'plug',
            dscr = 'Safely import plugins',
        },
        fmt(
            [[
            local has_{plugin_slug}, {plugin_slug} = pcall(require, "{plugin_name}")

            if not has_{plugin_slug} then
                return
            end

            {code}

            ]],
            {
                plugin_slug = f(
                    function(plugin_name)
                        return plugin_name[1][1]:gsub('[-.]', '_') or ""
                    end,
                    { 1 }
                ),
                plugin_name = i(1, ""),
                code = i(0),
            },
            { repeat_duplicates = true }
        )
    )
)

return snippets, autosnippets
