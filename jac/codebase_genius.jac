
node Repo {
    has path: str;
}

node File {
    has name: str;
    has content: str;
}

walker scan_repo {
    has repo_path;

    start {
        report "Scanning repository...";
    }
}

walker analyze_code {
    has code_text;

    start {
        report "Analyzing code structure";
    }
}

walker generate_docs {
    has analysis;

    start {
        report "Generating documentation";
    }
}
