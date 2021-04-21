%%
papers = readtable('Publication pipeline 29c020d9669848ab978c1247833d386f.csv');
papers.Status = categorical(papers.Status);
papers(papers.Status ~= 'Published ',:) = [];

for i=1:height(papers)
    i
    lines ={
        '---'
        ['title: "' papers.Title{i} '"']
        'collection: publications'
        ['permalink: /publication/' sprintf('pub%03d.md',i) '']
        ['date: ' papers.PublicationDate{i}]
        ['venue: ''' papers.Journal_Book{i} '''']
        'paperurl: ''http://academicpages.github.io/files/paper3.pdf'''
        ['citation: ''' papers.Citation{i} '''']
        ['authors: ''' papers.AuthorsText{i} '''']
        '---'
        'Abstract will go here'
        ''
        };


    fid = fopen(['C:\Users\jorge\UC Berkeley\OMlab - JOM\Code\ocular-motor-lab.github.io\_publications\' sprintf('pub%03d.md',i)],'w');
    for jj = 1 : size( lines, 1 )
        fprintf( fid, '%s\n', lines{jj,1} );
    end
    fclose(fid);

end

