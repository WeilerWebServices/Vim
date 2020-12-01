let s:suite = themis#suite('default_pattern')
let s:assert = themis#helper('assert')

function! s:suite.default_pattern()
  let test_cases = [
        \ ['example.com', ''],
        \ ['http://example.com', 'http://example.com'],
        \ ['URL is http://example.com.', 'http://example.com'],
        \ ['(http://example.com)', 'http://example.com'],
        \ ['(http://example.com/sample/(foo_bar))', 'http://example.com/sample/(foo_bar)'],
        \ ['(http://example.com/sample/(foo_bar)baz)', 'http://example.com/sample/(foo_bar)baz'],
        \ ['(http://example.com/sample/(foo_bar)baz/qux)', 'http://example.com/sample/(foo_bar)baz/qux'],
        \ ['[http://example.com/sample/[foo][]]', 'http://example.com/sample/[foo][]'],
        \ ['{http://example.com/sample/{foo}}', 'http://example.com/sample/{foo}'],
        \ ['{http://example.com/sample/{{bar}}}', 'http://example.com/sample/{{bar}}'],
        \ ['http://example.com/_0123456789/sample?foo=bar&baz=qux,', 'http://example.com/_0123456789/sample?foo=bar&baz=qux'],
        \ ['https://example.com:9000/sample_sample?foo=bar&baz=qux#id,', 'https://example.com:9000/sample_sample?foo=bar&baz=qux#id'],
        \ ['https://example.com', 'https://example.com'],
        \ ['https://example.com/foo;', 'https://example.com/foo;'],
        \ ['https://example.com/foo..bar', 'https://example.com/foo..bar'],
        \ ['ttp://example.com', 'ttp://example.com'],
        \ ['[ftp://www.example.com]', 'ftp://www.example.com'],
        \ ['git@github.com:sample/test,', 'git@github.com:sample/test'],
        \ ]
  let pattern = highlighturl#default_pattern()
  for [str, expected] in test_cases
    call s:assert.equal(matchstr(str, pattern), expected)
  endfor
endfunction
