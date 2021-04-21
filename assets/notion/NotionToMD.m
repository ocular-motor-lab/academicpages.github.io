%%
papers = readtable('Publication pipeline 29c020d9669848ab978c1247833d386f.csv');
papers.Status = categorical(papers.Status);
papers(papers.Status ~= 'Published ',:) = [];

for i=1:height(papers)
    i
%     lines ={
%         '---'
%         ['title: "' papers.Title{i} '"']
%         'collection: publications'
%         ['permalink: /publication/' sprintf('pub%03d.md',i) '']
%         'excerpt: ''This paper is about the number 1. The number 2 is left for future work.'''
%         'date: 2009-10-01'
%         ['venue: ''' papers.Journal_Book{i} '''']
%         ['paperurl: ''http://academicpages.github.io/files/paper1.pdf''']
%         ['citation: ''' papers.Citation{i} '''']
%         ['authors: ''' papers.AuthorsText{i} '''']
%         '---'
%         'This paper is about the number 1. The number 2 is left for future work.'
%         ''
%         '[Download paper here](http://academicpages.github.io/files/paper1.pdf)'
%         ''
%         'Recommended citation: Your Name, You. (2009). "Paper Title Number 1." <i>Journal 1</i>. 1(1).'
%         
%         };

title = strrep(papers.Title{i},'“','');
title = strrep(title,'”','');

citation = strrep(papers.Citation{i},'''','');

  lines ={
        '---'
        ['title: "' title '"']
        'collection: publications'
        'permalink: /publication/2009-10-01-paper-title-number-1'
        'excerpt: ''This paper is about the number 1. The number 2 is left for future work.'''
        ['date: ' papers.PublicationDate{i}]
        ['venue: ''' papers.Journal_Book{i} '''']
        'paperurl: ''http://academicpages.github.io/files/paper1.pdf'''
        ['citation: ''' 'a' '''']
        ['authors: ''' 'b' '''']
        ['year: ''' 'c' '''']
        '---'
        'This paper is about the number 1. The number 2 is left for future work.'
        ''
        '[Download paper here](http://academicpages.github.io/files/paper1.pdf)'
        ''
        'Recommended citation: Your Name, You. (2009). "Paper Title Number 1." <i>Journal 1</i>. 1(1).'
        
        };

    fid = fopen(['C:\Users\jorge\UC Berkeley\OMlab - JOM\Code\ocular-motor-lab.github.io\_publications\' sprintf('pub%03d.md',i)],'w');
    for jj = 1 : size( lines, 1 )
        fprintf( fid, '%s\n', lines{jj,1} );
    end
    fclose(fid);

end
% 
% 
% 
% 
%         '---'
%         ['title: "' papers.Title{i} '"']
%         'collection: publications'
%         ['permalink: /publication/' sprintf('pub%03d.md',i) '']
%         ['date: ' papers.PublicationDate{i}]
%         ['venue: ''' papers.Journal_Book{i} '''']
%         'paperurl: ''http://academicpages.github.io/files/paper3.pdf'''
%         ['citation: ''' papers.Citation{i} '''']
%         ['authors: ''' papers.AuthorsText{i} '''']
%         '---'
%         'Abstract will go here'
%         ''

% 
%   lines ={
%         '---'
%         'title: "Paper Title Number 1"'
%         'collection: publications'
%         'permalink: /publication/2009-10-01-paper-title-number-1'
%         'excerpt: ''This paper is about the number 1. The number 2 is left for future work.'''
%         'date: 2009-10-01'
%         'venue: ''Journal 1'''
%         'paperurl: ''http://academicpages.github.io/files/paper1.pdf'''
%         'citation: ''Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'''
%         'authors: ''Punugati, Sai A, Tian, Jing, Otero-Millan, Jorge'''
%         '---'
%         'This paper is about the number 1. The number 2 is left for future work.'
%         ''
%         '[Download paper here](http://academicpages.github.io/files/paper1.pdf)'
%         ''
%         'Recommended citation: Your Name, You. (2009). "Paper Title Number 1." <i>Journal 1</i>. 1(1).'
%         
%         };
