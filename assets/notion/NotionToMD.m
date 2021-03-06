%%
papers = readtable('Publication pipeline 29c020d9669848ab978c1247833d386f.csv');
papers.Status = categorical(papers.Status);
papers(papers.Status ~= 'Published ' | ismissing(papers.Year),:) = [];

for i=1:height(papers)
    
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

title = strrep(papers.Title{i},'�','');
title = strrep(title,'�','');
title = strrep(title,'"','');

citation = MarkdownScape(papers.Citation{i});

authorsfull = strrep(papers.AuthorsText{i},'�','n');
s = strsplit(authorsfull,', ');
authors = strjoin([strjoin(s(1:2:end-2),', '),s(end-1:2:end)],' & ');

ss = {};
for is=1:length(s)/2
    ss{is} = [s{2*is} ' ' s{2*is-1}];
end
authorsfull = strjoin([strjoin(ss(1:1:end-1),', '),ss(end)],' & ');
disp(authorsfull);

filename = strcat(datestr(datenum(papers.PublicationDate{i}),'yyyy-mm-dd'),'-', matlab.lang.makeValidName(title));


colors  ={'155,154,151,0.4', '140,46,0,0.2', '245,93,0,0.2', '233,168,0,0.2', '0,135,107,0.2', '0,120,223,0.2', '103,36,222,0.2', '221,0,129,0.2', '255,0,26,0.2'};

coloryear = colors{mod(papers.Year(i),length(colors))+1};

abstract = MarkdownScape(papers.Abstract{i});

lines ={
        '---'
        ['title: "' title '"']
        'collection: publications'
        ['permalink: /publication/' filename '']
        'excerpt: ''ABSTRACT.'''
        ['date: ' papers.PublicationDate{i}]
        ['venue: ''' papers.Journal_Book{i} '''']
        'paperurl: ''http://academicpages.github.io/files/paper1.pdf'''
        ['citation: ''' 'a' '''']
        ['authors: ''' authors '''']
        ['year: ''' num2str(papers.Year(i)) '''']
        ['coloryear: ' coloryear]
        '---'
        ''
        '### By: ' 
        authorsfull
        ''
        '### Abstract: '
        abstract
        ''
        '### Citation: ' 
        [authors ' (' num2str(papers.Year(i)) ') ' title  '. ' citation]
        ''
        ['### Full article: ']
        ['[' papers.Link{i} '](' papers.Link{i} ')']
        };

    fid = fopen(['C:\Users\jorge\UC Berkeley\OMlab - JOM\Code\ocular-motor-lab.github.io\_publications\' sprintf('%s.md',filename)],'w', 'native', 'UTF-8');
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

function  text = MarkdownScape(text)
text = strrep(text,'�','-');
text = strrep(text,'?','-');
text = strrep(text,'�','');
text = strrep(text,'�','');
text = strrep(text,'�','''');
text = strrep(text,'','fi');
% text = strrep(text,'�','&#177;');

scapes = '\`*_{[(#+-.!';

for i=1:length(scapes)
%     text = strrep(text,scapes(i),['\' scapes(i)]);
end
end