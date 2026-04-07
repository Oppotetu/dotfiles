return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<C-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<C-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<C-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<C-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        --{ "<M-s>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
        --{ "<M-d>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
        --{ "<M-e>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
        --{ "<M-f>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
        --{ "<M-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
}
