00:00:02 Daniel Chen
So let's get started. I believe I sent out through Canvas as an announcement. You should have this URL somewhere from the last announcement. I also just sent out a Canvas announcement with four links, so you have access to it right away. We'll go through all of those links. The goal for today is essentially to do assignment one with you in class, so you see all of the bits and pieces. We have a lot of time during our lecture. Hopefully by the time I'm done with the lecture part, most if not all of assignment one is already done. And because it is coding related, you'll be using a lot of tools online. We'll walk through the entire process together.

00:01:00 Daniel Chen
This link to this repository that I'm sending out is essentially a summary of the lecture. So this is what we talked about last week. The way you navigate this as the lectures, as we have more and more lectures, you can click on this first folder. Right now, there's only the lecture from last week. So you'll see more and more dates. And then, really, I guess the main thing is to look for the summary document. Last week, because I actually showed you a bunch of code stuff on the screen, the history and the console. Those would be here. Here's the actual set of commands and outputs that you saw when it was dumped to the screen, and then the console is what was actually dumped on the screen, and then the history is here, the actual commands just on its own that was ran.

00:01:56 Daniel Chen
If you need a reference, I type something on the screen somewhere. How do you capture that? Hopefully, I don't do something on my computer where I lose that information. But I'm trying my best to make sure that's there. The summary comes from the transcript, so there is an audio recording for the lecture that I am just transcribing, just in case students' voices don't get picked up. But then from there, you can look at just a summary document if you just need a reference over what we talked about. I do this with my master students, and what they've told me that they find useful is they mostly just look at the main headings and try to see if that's something they understand, and then cross-reference the textbook from it. So it is a resource on just what we're talking about in class. Luckily, there's no exams in this class, so it's not like you need to.

00:02:53 Daniel Chen
Know everything that's going on, since this is a very practical course. Just use it as if there's a concept or topic or a name of something that's there for you. Just keep in mind that this all like AI summarized, so not everything could be transcribed incorrectly like that. So keep that in mind as well. In Canvas, I just sent out an announcement with the four links that we're going to be working or just showing you going through in class today. So this week we're on week two on modern workflows. So if we think about what this

00:03:50 Daniel Chen
Is in context to how last week connects to this week. Last week we talked a little bit about how to find a file or a dataset on your computer. This notion of a relative and absolute path. Essentially, you have a dataset on your computer. How do you get any programming language or your computer anything at all to find that particular file that you have on a computer? And then the assignment we went through was trying to create this data intake card. Do you always have to go through that entire process as a formal written thing? It's part of the course in trying to get you to really assess the quality of a data set. So you are trying. The whole context of the course is we're trying to do some type of health analysis, and you're going to be looking for data sets.

00:04:46 Daniel Chen
We're guiding you to look at these government-provided data sources as places to find data. But as you look for other things, it might not just come from a government. Part of that data intake card is trying to get you to think about: is this a data set or data source that is reliable or correct for the purposes you have?

00:05:16 Daniel Chen
Intend to use it for. The reason why I say that is there are a lot of places online that provide free datasets, and it might even seem really enticing. Like, hey, this is a dataset for this particular disease, and blah, etc. Especially if you've taken CSI One Hundred before, but that's really annoying. That keeps happening. I'm going to have to call someone.

00:05:51 Speaker 2
We're gonna try this.

00:06:15 Speaker 3
That's promising.

00:06:19 Daniel Chen
Right. So there are. If you've done other data science work before, you might have heard of this thing called Kaggle. And Kaggle's been really popular. One because it's a pretty good place to. If you've if you're new to like this whole data science world, Kaggle is a good place to. Be given a dataset and try to do some type of analysis. They used to, they probably still do have Kaggle competitions. Some of these like are actually worth money, or at least they used to be worth money. So there are like data science analytics competitions that if you do like win, you could. That is a lot of money. What are they doing? But yes, clearly, if you're gonna try to win eight hundred fifty thousand dollars, there's gonna be a lot of people competing for this.

00:07:15 Daniel Chen
But that's how they sort of became really popular. There are real data sets for competition, but there are also learning data sets that are not for competition, but they're a really good place to find data. I say that because people also use Kaggle for general data hubs. So they publish data sets into Kaggle, and this is an example. You might find a dataset that seems like it meets all of your goals, but it could also just be completely synthetic and made up, and they just host it here to do a data science example on their own. So that's why if you ever end up using non-government data sources, please try to hunt down exactly where that dataset came from. It might end up back in a government.

00:08:13 Daniel Chen
Resource anyway, but that way you can actually check the original source of that data because there are a lot of datasets in here that are completely fake and they sound really good and you might want to use it, but then it's completely not correct. It's not an actual real dataset, so that's something that, at least in a lot of my other classes, students end up making claims about stuff, and I was like, "Yeah, but this is all fake data to begin with. So nothing you claim is actually real." So that was last week, which is how do we go through the process and inspect to make sure that this dataset is a real dataset. Today, the goal is now: we have a dataset. Now let's go.

00:09:07 Daniel Chen
Load this dataset in an actual compute environment. For this particular course, we don't have you install anything on your computer. If you want to, you can come to an office hour or message me, or we can talk about it before class because I'm going to try to be here half an hour before class when the previous class leaves to get your local computer set up. For the most part, we're not actually trying to get you or a computer set up in this class. It just makes a little things a little bit easier in terms of compute like that, and a little bit of grading. So in this particular class, you're not working on your actual laptop. We will have a sort of compute running in the browser that's hosted by GitHub, and that's what we'll be using.

00:10:06 Daniel Chen
The goal for today or this week is that we understand where our data set is. We're okay to go and use it. This week or today, we're going to actually try to load it up and then go through the process of writing a small report that uses this data set and all the pieces of the tooling that we need to go and create a report. Some of the tooling that we'll be using is GitHub Codespaces. That's where one of those links come from. That essentially gives us the compute environment that we'll be working with, and that you'll be working with for your homework assignments and everything. I may or might not end up showing Codespaces exactly because I don't. I think my education pack might have expired. We'll see how that ends up going.

00:10:59 Daniel Chen
But hopefully, from the week zero stuff, you've registered a GitHub username and you've clicked through all the things that say you're a student and you have a GitHub education pack, and I think that should help with a lot of the things that we need for this week. Codespaces is going to be where we do the compute, and we'll talk about all of these pieces that we need.

00:11:31 Daniel Chen
For our class today.

00:11:36 Speaker 2
Okay. All right. All right.

00:11:49 Daniel Chen
So I'll be going through this. I will talk through it, and then we'll demo the actual buttons and everything that you have to click. If you're following through the textbook, it's literally the next chapter. What we have set up right now is there is a repository, so a place where code is being stored on the internet somewhere. We have a health data science or HDsx workspace that is going to be the starting template that we have set up for you to essentially do all of the work that you need in this particular class.

00:12:30 Daniel Chen
It is a GitHub workspace, so think of it as you know Dropbox or Google Drive or any of those places where you have work on your local computer, but then there is this computer or this cloud that has like the other work. We'll talk a little bit about Git and GitHub and like how that all works out. I think that's next class. We'll talk about how we can do those saves to the cloud infrastructure. But for now, just think of it as hey, there's a Google Drive account somewhere, essentially. Except this is a special place where we handle code, and you'll be interacting with this interface online, just like how you interact with a Google Doc sort of online. As you type stuff, you can save things. You have to do this extra step to do a save, but think of it like Google Drive, where all your stuff is going to be on this website.

00:13:27 Daniel Chen
It's really similar to how this. We're restoring the lecture transcriptions and summaries. This is a repository. This essentially like Google Drive. It's on my computer, but this is how I am able to share it with the rest of the class. So you'll have something really similar to this system, but for this particular course. The other thing I like to also mention is that we're going to be using a lot of these. Coding computational tools—they're not just restricted to what you're using in this class. Meaning, many of you are probably taking other courses as well. The things that we're talking about in this particular class, especially around Git and GitHub, you can totally make a repository that's private because usually instructors don't want you to just publish your homework assignment to the public.

00:14:25 Daniel Chen
You can create a repository for each one of your courses and just upload all your work there. And if you are in a scenario where your Google Drive is getting full or your Dropbox is getting full, GitHub provides another place where you can store stuff. The only caveat is you have to do a little bit more technical work, but it is free and roughly unlimited in that context. These are tools that could stay with you beyond this particular class. It's not just for coding-related work. When I was first learning this, I was in school at the time, and I did the same thing. Each class I took had its own repository. It was private, and I was practicing all of these skills on my own. But then at the same time, all of my stuff was backed up, and if anything happened to my computer, it's somewhere on the internet, and I can bring it back down. It does take a little bit more technical work.

00:15:24 Daniel Chen
We'll be doing a lot of that practice throughout the class, but again, it is something that you can use beyond this particular course as well. And so that's a nice thing. Again, we're using coding tools. They don't only have to be for coding. You can put Word docs and PDFs or other PowerPoint slides. They all can be tracked in the system. You just don't get the nice. It's not going to open up a PowerPoint in the web interface, but you'll still have the original PowerPoint if you need to download it. So that's how that interface will come into play. We have this idea of a repository, and that's going to be in the cloud or really just in the web browser. Essentially, it's being stored on Microsoft servers somewhere. Main takeaway: It's not actually on your computer. Think of that as the master copy. Whatever is there, treat that as this is the final result of things.

00:16:21 Daniel Chen
The other way you can think about is when we are grading the homework assignments, what's on the web is the thing that we're grading. If you somehow get it on your local computer or you're working on a space, but it's not actually on this view of the site, then we can't actually grade it. So the other way to think about is I'm going to have a recording for today's lecture, and there's going to be a transcript. Until I get it on the website, it doesn't exist for you as students. I can have all of this stuff. It can be queued up, but unless I do the process of getting it on the public cloud space, it doesn't really exist. Might just be on my local computer. So same thing that you'll be working with. We'll see how that mechanism all works within this repository, this site. Let me make this bigger. Within the site.

00:17:19 Daniel Chen
If you click this, I'll demo it for real. But if you click through, like code, there's a code space button. We have it set up where it can take that folder and then load it up in a coding environment. This is how we get around the fact that you don't actually have to install anything on your computer. We can actually leverage Microsoft and all of the funding that they have to load up a coding environment that we'll be using for this particular course. Luckily, the tool that I have on my computer is roughly the same thing as Codespaces. So if it doesn't work for me in the web browser, I can still show it locally, and they'll roughly look exactly the same. Maybe the color might be different. So we have the ability to here's our Google Drive folder. That's what the repository is. You double-click a Google Drive document, and it opens up that view of a drive.

00:18:17 Daniel Chen
Now the only difference is this view is this coding environment that you can type and work, and run code and write prose and load data. All of that is going to happen there. There is the only thing that ends up being slightly different. And again, we'll talk. We'll constantly review this and talk through it. Is Just because you save something like Control S, save something in this coding environment, doesn't mean that snapshot is being made in the web view. So there are two different saves that's going to happen, and that's going to be new to all of you. That's going to be unique to this coding environment, and it's the mechanism of how Git and GitHub works. And I keep saying Git, that is the version control system that we're using.

00:19:12 Daniel Chen
So the other way you can think about what Git is, if you've ever worked on a Google Doc before, and something happens, like a cat jumps on your laptop and then everything gets deleted, or on a Dropbox folder, if you go into the web interface, there's usually a button that says Restore from last checkpoint. It's different from Control Z. You might close the tab and then Control Z doesn't exist anymore, but somewhere in Google Docs, there's a restore, whatever the thing was, like a half hour ago. That is essentially making checkpoints. That is what Git is doing. It's making checkpoints. The only difference is those checkpoints with Google Drive and Dropbox, they usually happen every ten, fifteen minutes. There's a schedule that it does the checkpointing for you. With Git and this interface that we're working with in class for this coding environment.

00:20:04 Daniel Chen
Those checkpoints are completely manual. There are no auto checkpointing, so just because you save a document doesn't mean it's been checkpointed. Those are two different things that are happening. You just have to be very explicit, I saved it. It works. Now I really want to save it. It's like publicly backed up, and we can see it as a homework assignment. Stuff like that. Again, that's really useful because if something were to happen on your laptop, or all of a sudden your code isn't working, in theory you can roll back to a previous checkpoint and then start over. In that sense, if you're using it for your regular school work that's not in this class, you can save it, checkpoint it, and then you have the starting point of the slides. As sometimes instructors like annotate slides like that.

00:20:55 Daniel Chen
You can have another copy that's the annotated version, and there will be ways where you can look at the pre and post stuff like that. There are lots of ways that checkpointing can be used. The main thing is this checkpoint process is completely manual. Just because you hit Control S and you see it and your code works and everything doesn't mean that it's been checkpointed. The only thing we can see is what's been checkpointed or committed, which is the actual technical term.

00:21:24 Daniel Chen
So just think of it that way. You have to save things twice. One is the way we're all used to, and the other is this other technical way we'll demo. Cool. Are we on time? I think we are good on time. So if we go into Canvas and look at the announcements, or in your email, I believe link number two, the one that says HDSx workspace. This is the thing we're going to do together as a class, and I'll talk you through it as we go. This will be your primary way of submitting work, at least for assignment one. We have a bunch of assignments in here, so there are templates already set up for you. This is how you'll be doing all of your assignments.

00:22:20 Daniel Chen
The first thing that we have to do is you need to make a copy of this in your own account. So hopefully you are logged into GitHub. You have a little picture, you can add a picture if it's the default one. But you need to make a copy of this home project into your own account. The other way you can think about it is this ours. Like this the instructor account. This our setup. We don't want all of you just doing work in the same spot. That causes all sorts of other problems. There's a way if you want to work on a collaborative thing. We'll talk about that when we get to collaboration, which is part of the assignment for this particular course. But for now, there are individual assignments, and so we need everyone here to make a copy of this assignment in your own account, so you can just work on your own account that way.

00:23:13 Daniel Chen
The button that you need to click is right up here, and we talk about it in the textbook. So if you lose track of what's happening, it's just in the textbook. There's a button called fork. The technical reason why it's called fork is you can think about there being a main road, and that's like this homework assignment, and then there's a fork, which is you're going to make your own copy, and you're going to do your own thing, and so you're creating a fork from the main copy. In this particular class, Fork is going to be your own work for your homework assignments. So we're going to click Fork, and it's going to go through this page for you. You can leave it as HDS workspace. I don't think we tell you to rename it. Leave it as HDSX workspace.

00:24:07 Daniel Chen
I might change some of these demos when I'm reviewing stuff because you can only have one copy with the same name, so you can't fork the same thing multiple times with the same name. That's why. The other thing you want to make sure is that it's under your account. If this is the first time you've made a GitHub account, this should be only one thing. As you get added to other projects, when we get to the group assignment, I might set up a classroom organization. I don't know yet. Make sure this says your username, and then you can leave everything blank. Don't worry about what this says. Leave it as the default and create the fork. What that will do is it's essentially copying over all of the information into your account. You'll see it right up here. Before it was like a son's GitHub account, but now it's like mine.

00:25:06 Daniel Chen
There we go. Now it's like my account. So this is the version of the project that we're working with. If you're following along after class and looking at the Canvas link, or if you're hopefully following along right now, make sure when you are working on the code piece of it that you're actually working on the version with your username because there's also a reference back. In theory, as more and more of you do this, this number should start increasing for all of the students in the class. That's also another way to make sure that we know people are not stuck somewhere.

00:25:57 Daniel Chen
We are going to work on this particular assignment. We are going to go through this practice report. If you see assignments, there isn't an assignment one. The actual assignment is going to be this practice report. We're not going to do too many crazy things around subfolders, et cetera. We're mostly going to look at this assignment called practice assignment or this practice report. I'm going to open some stuff up in tabs. We'll look at this practice report.

00:26:33 Daniel Chen
And we'll also look at the README file, and then we'll also look at this data folder. The README file, as far as this interface, which is GitHub, as far as GitHub is concerned, anytime it sees a README file or a file that begins with README, the extension here, depending on where you're, if you're doing this outside of this particular course. If GitHub sees a file named README, what it ends up doing is, if you keep scrolling down, it will try to pretty render that file for you. So we'll be building on README files, and you'll be working with README files throughout the course. But this is essentially like the file that you should read. It's called README, and it typically holds all of the information.

00:27:31 Daniel Chen
That documents this particular project. So right now, it's saying, "Hey, here's the actual project. Here's the folder structure. Things like ChatGPT is pretty good at generating this type of stuff, which is why sometimes it's really useful. Which is also why I like to put a lot of stuff publicly online because I can give ChatGPT or Claude, "Hey, here's the repository. Here's the URL. It's public, so you should be able to see it." From here, I need you to read stuff in here and do stuff with it. So generating documentation, at least the big chunk of it, can be automated as long as you promise yourself and us that you actually read the output. Like I said, even with the transcription stuff, some things could be inaccurate just because you're giving it the raw source doesn't mean it's doing the right things. I know from my other class, my master's class, some I look at the transcript and the summaries and sometimes it gets due dates wrong.

00:28:27 Daniel Chen
I'm like, do what's written in the syllabus, not what the summary is giving you. Sometimes these things can be inaccurate, but this is essentially going to be the documentation for your project. If you are really new, you will end up writing documentation on every little small command. If you need to help yourself document, click these sequence of buttons. Then, write it down that you should go and click those sequence of buttons. It's totally okay, especially when you're new to all of this. Document right here in the readme file. What's also nice about this is traveling with the project itself. Most of you probably are used to taking notes somewhere in your own folder. You have your folder structure for your course, et cetera, and you're documenting all of your stuff there. But this way, your project already exists online somewhere.

00:29:23 Daniel Chen
So why not just have all of the notes that you have on your computer traveling with the folder? If you were to be on a different laptop, or you're trying to share it with somebody else, or six months from now you got a new laptop and you just want to look at your previous work, the documentation is traveling with the project. As long as you know where the project is, it's already documented, and you don't have to sift through. Here's my project. Let me go in my computer and find where those notes are stored. Like those. In two different locations, so you might as well put everything together. Document things in as much detail, especially when you're starting off. Document it in as much detail as you need. The only thing I would say, don't put a password if it's like, hey, when it asks for this, use this. Like, don't put your password here because it is public. Don't also put your password and then like.

00:30:23 Daniel Chen
Have it public and then be like, oh no, I have the password. Let me delete it. Technically, the snapshots are in the history, and so if you do that, just let us know. There are ways to undo and delete stuff out of history, but just keep that in mind as well. These are actual formal snapshots, just like Google Drive and Dropbox, except now they're also public or by default they're public. So just because you deleted something and it's not in the main view, doesn't mean it's not in the history. That's how passwords and keys get leaked. It's one of the ways passwords and keys get leaked, where people think that just because they don't see it right now, doesn't mean it's in the history. So keep that in mind. So that's the README file. This is coming from this README. Md. We'll have a data folder. So this will be the dataset that we'll be working with in this particular class. It's in the data folder under patients. Csv, and we'll.

00:31:20 Daniel Chen
Load this particular data set in the report that we're going to be working with today. This is where all the stuff that we talked about last class comes into play. If you remember from last class, we went through this whole conversation around how to tell the programming language where this data set is and how to load it into R so you can go doing other stuff. It's in a subfolder called data, and then the actual files are called patients.csv. Last class, we talked about all of these things about relative and absolute paths and where your starting point is. That's sort of why we don't have you install stuff on your computer because that kind of can change depending on if you're moving stuff around. So again, we're doing some things in this particular class to make it easier for you to get started, and one of those ways is that the compute environment is going to be online.

00:32:13 Daniel Chen
The starting point is going to be wherever this folder is. So if you're going to look for that particular data set, it's going to be like double-click data, and then the patient CSV is there. There's no desktop. There's no this thing doesn't exist in a downloads folder somewhere that you have to go and find. So that's where those pieces come into play. The main, the most important file that we're going to be working with today is this practice report Q and D, and we'll be talking about all of the pieces that are happening in this particular file. So we'll have a break in about five minutes or ten minutes or so. So if you haven't clicked through all of this, that'll be your time to click through. But I'm going to talk through this particular document. If we sort of squint our eyes and try to ignore things that look like code.

00:33:12 Daniel Chen
This looks. It should make sense. There is something for a title, and it's called my first report. So when we look at this in the rendered prettier view, you'll see some text that says my first report. There's an author where we're asking you for your name, and then this format piece we'll talk about in a little bit. This view, or like this coding view of this document, and we can turn this coding view into something that renders or generates on the internet somewhere. The format is HTML, but we can also say format into PDF, and you can actually take this entire document and generate a PDF version of this as well. Depending on what you need, what your output is, or how you're trying to share a document, you can change the format of something. PDFs are really common because it's almost what you see is what you get.

00:34:10 Daniel Chen
And you don't need special tooling around it. A lot of data science work. If you're communicating between data scientists to data scientists, you'll see more PDF, HTML reports, not PDF, just because HTML reports get to use your browser, which means that if you have an interactive figure somewhere, you can actually have a report with an interactive figure versus a PDF. It's kind of static, and you're kind of stuck with a PDF or a Word doc. So you can actually export this out to a Word document as well. But since we're trying to train you to do data science work, we'll show you all the tools that we get to use as data scientists, and then you can slowly realize that the rest of the world, all of those other things, are slowly going to hate as we work with this system more and more. And then the rest of this, again, there's like a lot of visual noise or like syntax that you probably won't be, you're not used to seeing.

00:35:08 Daniel Chen
There is something where it's saying "Welcome to your first practice report," and it's got special text in front. GitHub tries to make this, do a little bit of color coding. But essentially, what's happening is this is trying to create a header. And you can even see the way that the document is syntax colored is it's trying to give you an actual header. When this gets rendered, and you'll see this in a little bit, you'll expect to be something that's a little bit different from the rest of the text that looks like a header. That says welcome to your practice report, and then the rest of it is just as if you're normally typing in Google Docs. The only thing that's different is in Google Docs, if you Control or Command B something and you make something bold, it visually will look bold. Now you don't have the ability to lose that ability, but if you want to bold things, it'll be like two stars around a term, and that will turn things bold.

00:36:04 Daniel Chen
So essentially, you're going from this view, or we're going to start working with a view that is the original coding view of all the documents that you're used to working with. The benefit of that is because we have the original source document of something, we can convert it to anything else. So if you're used to Google Docs, you know you can bold something, and that's fine. And in theory you can control paste or print the PDF. But this way, we can actually take this document, and the same document can go into Slide View, or PowerPoint View, or Word Doc View, or PDF View, or an HTML View. That's one of the main benefits of working with something that looks a little bit like code, because we can convert it to a whole bunch of other formats. And that's what that's part of the tooling that we'll be working with throughout the course. Here we have normal text.

00:36:57 Daniel Chen
One of the other things that you'll notice if you end up doing a bunch of data science work is, I personally will always put a new line after a sentence. So a lot of times when you talk with me, you'll see a lot of extra line breaks, and it's because this is the source view of something. The source view when it sees a line break doesn't actually give you a visual space unless you have two spaces. Then you'll get a paragraph break. And that has to do with when we make changes to something, it marks the changes line by line, which is a very different way of thinking. If you're used to Google Docs, because you just normally keep typing, and it'll just when it gets to the end of a page, it'll just auto flow the text.

00:37:54 Daniel Chen
When we're working on a coding format or a coding view of something, each file actually has a line number associated with it. So I can say, "Hey, it's on line fifteen," and it makes it really easy for you to open up a document and go to line fifteen, and we can both be looking at the same thing. What that also means is you can write five hundred words on a single line, and it just runs. It just keeps going. Visually, it can have a line break. But the computer still sees it as line fifteen with five hundred words associated with it. So when we then need to say, "Hey, it's on line fifteen," and we're still trying to talk about some part of the text that you're writing, that becomes really difficult to figure out what where are you looking at. So that's why you'll see a lot of extra line breaks when you start working in the source view and it's just so I can talk about line twelve and say.

00:38:51 Daniel Chen
Hey, do you see the word 'sync' at the end of line in line twelve? That's a much easier thing to say than if this was all one giant thing. And I say it's the word 'sync' in line twelve, but line twelve has five hundred words in it. It's going to be really hard to just work with that. So that's another thing that you'll see. You can totally try it out yourself. Try to put a whole paragraph in one line. It'll still visually look the same when you get the PDF and Word document. It just means that when you're looking at it in this view, it'll just run off the screen. So that's why you'll see a lot of things just end around eighty-ish characters. If you ever have physical dead tree books, they have page widths as well. And again, people put line breaks because it makes your eyes move left to right less. So there's also visual ways like that does exist in the analog world.

00:39:49 Daniel Chen
People put in line breaks in your source format just to make a lot of other things a little bit easier. So next thing, we see something else that looks like another header, and then there's some text here, and then this is the next piece that we'll be working with. If you look at the code from last week, we only really saw what was on line 24. Ignore everything else around. The document we only really saw hey there's this read CSV function, this technically not using tidyverse which I just realized that, but it's okay. Last week we saw this function called read underscore CSV, and it read it into a variable called patients, and all of the stuff that we talked about last week around how do we point the programming language to a data set that we have on our platform.

00:40:47 Daniel Chen
We need a way to separate regular prose text, which is normal English, or whatever language you want to type in, with text that represents code that needs to be run. You can see here there is this special type of syntax or formatting in the document that begins with three backticks. On a US keyboard, this is to the left of the number one. I believe that is a key you almost never use in real life. But if you hit that three times, and then curly brace R, what this says is that everything between those three backticks will be run using whatever programming language is being specified. This is a really cool document in that you can have regular English prose text or whatever language you want to type in.

00:41:44 Daniel Chen
If your computer handles glyph-based languages, it can actually type glyph-based languages as well. So you have regular prose text, and you can say, "Here's code that I want to write about," and it will also generate the output of the code, and we'll see that in a little bit as well. And so now you have a document that you can tell a data story with. If you think about how people do.

00:42:13 Speaker 2
Have? Whoops.

00:42:22 Speaker 3
Do I have the

00:42:24 Daniel Chen
The. This is an example. So this is something that I've done last year that I'll update eventually, which was like, hey, let's go plot all the cherry blossoms in the city. You can see this is regular. This is a heading. This is regular prose text, and then down here is a map. And this map is general. I think it's. I think I'm actually using R for this. This map is generated through R, right? So this document actually runs in real time to show you something. In this case, I'm trying to tell a data story around, hey, when it's March and you want to go see cherry blossoms, here's where all those trees are planted around the city. And so this is something that you can do. And the main mechanism that makes this work is I need a way to put regular prose text with actual code.

00:43:15 Daniel Chen
We can talk about the source document of that later, but fundamentally, this is what's happening: I have a header, I have regular prose text, and I need code to be run somewhere. You can do other things, like I actually need to use to show the code and the output, or hide the code, which is what I did, and only show you the output. Sometimes there is show the code and hide the output, like that's also all of those combinations and permutations, depending on how you're trying to tell your story. Those are things that you can do. And so you can do the same thing with code and its output. You can do the same thing with figures and generate figures. And then this is the document that we'll have you all do right away. How does this work? You're going to open up your fork of this. You're going to click on code. You are going to click on code spaces, and then you're going to create the code space on main.

00:44:15 Daniel Chen
This is going to do all of the installation and setup for you, so it's going to take some time, which is why I want you all to be clicking that button right now, and we'll end up taking a break. This will install everything we need to turn that document such that it can go and load the dataset and give you those example pieces. We'll take a five minute break. Our dancing break, our stretch break is at the hour and a half mark, but take go through those steps. Fork the repository. Click on Codespaces, and just let this load up within the next five minutes. If you have any questions, just raise your hand, and we'll and I'll try to help you. We'll start again at fifty past the hour.

00:45:33 Speaker 3
Is saving to save the practice report. Do you mean that we have to make a copy into the assignments, or we can edit this one out? Just edit this. I think it's just edit this.

00:45:44 Daniel Chen
For later reports, we'll do it there. But for now, just to keep it simple, work on this.

00:45:52 Speaker 3
Thank you. And I wonder where the render button is. Do we have a render button? Is it safe to push a render button? I don't think there's a red button here, so we'll talk about rendering.

00:46:08 Speaker 2
Oh.

00:46:18 Speaker 3
So you did the first uprights and you haven't copied.

00:46:21 Daniel Chen
So click on this. So click on code, and then you're looking at the raw source. But now when you click on this, you're looking at the computational. This will install everything. Perfect. Thank you.

00:46:42 Speaker 2
No.

00:47:36 Speaker 2
All the debt.

00:49:36 Speaker 2
So.

00:51:29 Speaker 3
Ah

00:51:37 Daniel Chen
So I guess it takes like seven minutes. So I'm going to continue talking about a few things, and hopefully, within the next two minutes, it will work for everyone else. As it's still loading, hopefully, if the thing is ticking, it's loading. Let it load. There's a lot of stuff that needs to get installed, so we will.

00:52:32 Daniel Chen
We'll deal with that. One thing when you are in this view is this looks very different from this view, right? Hopefully, that's your visual cue of here's the files that we're working with. Here's the coding version that we're going to be working with. On the left hand side, there is this little file button. The files that you see here on the left hand side. If I make this bigger. The files you see here on the left-hand side should be the exact same files that you see in the repository view. So this is how you can do your work, save it, and then do a little actual checkpoint step. And then your checkpoint step is when you refresh this page. Whatever you just saved should end up being displayed here.

00:53:24 Daniel Chen
So we have our README file. You can see here this is the view of the README file, and one of the things you saw was we could pretty view this particular file. There's a couple of ways we can get to that. If you go into.

00:53:57 Daniel Chen
I know the keyboard shortcut, which is why I'm trying to. So if you click on the little button, go to View Command Palette, which is Apple Shift P or Control Shift P, depending on your computer. So if you see the arrows right there, you'll see a little box that shows up. So the keyboard shortcut is Apple Shift P or Control Shift P. If you end up forgetting the shift part of it, and you end up with the box, but the things that we're trying to show you don't show up, you can either hit Escape and then use the correct keyboard combination. The other way is literally type the greater than symbol, so like Shift Arrow, and then you'll get the command palette. So whatever ends up showing here, if you manually type that, you'll get to the same command palette.

00:54:55 Daniel Chen
The README file has this extension called MD or Markdown. One of the things that I think you can even type preview. If you type preview, there is Markdown open preview, and what this will do is whatever file you're looking at or the README document, it will preview it in the prettier format of it. We talked a little bit about things that should look like headings. Here's a big heading. Here is the text. You can see there's something that's bolded. There's the word "your" that's bolded. If we look at the README file, you see "your" has these two asterisks around it, and so does the actual course. This is an example of it's not really that long of a line, but you can see it is a really long line.

00:55:50 Daniel Chen
This part right here, and it's auto getting wrapped around, but that means that it could just be going on forever in theory, and it might look visually that it is a paragraph, but if I were to say science in line three, that is something that you can look for versus science in line three when it's running off the screen, et cetera. So there is a difference between something that looks like this, where everything is on line three, versus breaking things up into multiple lines, and the reason why I show you this view of it is because there is a way to turn off word wrapping, and you can see if you have 500 words, now you're reading things that way, which ends up being very annoying. So usually, I turn word wrapping off just to make sure that doesn't happen.

00:56:48 Daniel Chen
That's why you'll see a lot of line breaks. It's just so things don't run off the edge of the screen. Again, that's really important because code doesn't like code usually has to end up like the way you write it is kind of important. So you can put in line breaks with your code so it actually looks a little bit nicer. So this is our Markdown document. Hopefully, for everyone else, that ramble sort of got everything loaded up by now. But we can go back and look at our practice report. This has a different file extension. It's QMD for Quarto Markdown file. So the tool that we're using is actually called Quarto. Quarto is a technical writing tool, and one of the things it can do is this whole process of how do we interweave prose text with code and code output. It can do a lot of really cool things. Like my entire website is this is a Quarto website. So like you can build websites out of them.

00:57:47 Daniel Chen
You can think of individual like this document is one of those documents. The practice report is essentially one document that's in a Quarto website. The output of this HTML, so this why a lot of people like working with HTML in a data science world because HTML means you can put on a website. GitHub actually gives you free hosting for things that are like websites, so you can actually put things on the internet for free, which is really nice, and that's why a lot of people end up doing things in the HTML world. So this is a Quarto document, and let's just try to render this without, and then you'll see how everything links up. There's a couple ways on how we can render this. The easiest way is make sure that your document is selected. So I'm just going to close everything just so that's a little bit easier. The other thing is if you ever end up in this mode called restricted mode.

00:58:45 Daniel Chen
Click on Manage and say Trust Folder. A lot of things. You'll see that I get my color highlighting and all of that back. So if you see Restricted Mode, make sure you trust the folder. The we'll just go and render this. You can see what's nice about the coding environment is that it's trying to actually highlight. These chunks, right? Like this visually different from the rest, and it's a cue of like, this a code chunk. This how the application, or in this case, VS Code, is going to visually separate things that is code versus things that's not code. That can also help you as well when you're working because if you misspecify one of these, you'll notice this like the whole thing got like has a different background color. And so if you're staring at this and you're like, why? Why is there like a this doesn't this not code?

00:59:41 Daniel Chen
Technically, it is code, but this is not what I mean for code. That is your way of, if I do this, like that's clearly not code anymore. And so, if you end up with weird background colors, that's happening. This is the IDE telling you, hey, you might have forgotten a backtick somewhere. So there's a lot of visual cues happening. It's very easy to miss, especially when there's so many new things to look at. You have bolded blue text and blue text here and things like that, but as you get used to this interface, there's a lot of visual cues just to help you with navigating the system. Let's just go and render this document. We're going to open up the command palette. Control Shift P, and we're using Quarto. You can type in Quarto, and you can see the commands are going to filter. That's why before I just know it's called Preview, and then look for Markdown Preview. Right now we're doing Quarto.

01:00:38 Daniel Chen
And somewhere in Quarto, there is a render document. So we're going to, if any of you have done video rendering or video work before, you have your timeline, and you're going to create the final thing. That process is called rendering. And so we're going to go and render this document, which is here's our document, and we're just going to go and render it. It's going to ask us what format we want. We already told it PDF, but you could overwrite that format if you want, but we're going to say render this to HTML, and it's going to do its thing because it's in the browser and the way browsers are set up these days, they probably are not happy with.

01:01:25 Speaker 3
I blocked my pop up. Hold on, where did it go?

01:01:41 Daniel Chen
It didn't auto open for anyone, did it? No. In the file panel on the left-hand side, and if we look at the output of what happened, it is running each chunk one at a time, and then towards the bottom, it would say created output practice report. Html, and so hopefully you see a corresponding file off to the side called practice report. Html. What we can do is if we click it, right-click it, we should be able to say open with.

01:02:30 Daniel Chen
Where is my browser? Does this work if I just double-click it?

01:02:39 Speaker 3
Nope.

01:02:47 Speaker 3
Nope.

01:02:49 Daniel Chen
Oh crap! Oh no. There is a built-in browser, which is what I am trying to open up right now.

01:03:02 Speaker 3
I don't want that. We're not going to do that.

01:03:14 Daniel Chen
We're going to.

01:03:20 Daniel Chen
Quarto render to let's tell it to do PDF, and then maybe it'll pretty open.

01:03:36 Speaker 3
Oh darn, that's annoying. A browser.

01:03:50 Speaker 3
Simple browser show. Practice. Re.

01:04:01 Speaker 2
Oh.

01:04:23 Speaker 2
Something's not configured right here.

01:04:25 Daniel Chen
No one's done a combination of clicking to open this properly, right? I have a backup. This is totally fine. We can just skip the view in here. So what we'll do is we will render this to PDF. I think default. We can also specify multiple output formats. This is useful if we want to automate the process of generating reports. But you can always manually render things using the command palette. So Control Shift P, select your Quarto document.

01:05:21 Daniel Chen
Render the report, and then you can see it's like render all formats or just render one of them. So right now, all the formats will go and create the PDF document and the HTML document, and in here you can see.

01:05:54 Daniel Chen
We'll fix that. Let me just show you what this looks like on my computer, and then we'll fix this during the break. So render Quarto, Quarto render document. What you should see is it's going to go and render the document, and it will go and create the HTML file. And what we can do is open it in the integrated browser. And then what it will do is take that source document and this the actual document that it created in HTML view. This the rendered version, like the prettier version of it. This not the like the raw source. So it's taking this and making it look pretty, which is what I'm trying to get you to do. But you can see we have parts of the YAML header. So it was called my first report. The author was like your name. So that was so that is up there.

01:06:49 Daniel Chen
We had that original. How do I do this? There we go. So we have author, your name. We have welcome to your practice report as a heading. We have our Quarto regular text, and then in here you can see we have our actual R code and the rendered R code. And then down here, the part that's really interesting now is the R code actually got run. And then the render format actually has the code beneath it. So right now, this is saying I'm going to read the dataset from patient CSV, and the head function is essentially saying, "Hey, given this dataset, I want you to look at the head, which is the data science way of saying just look at the first couple of rows in my dataset." And so right now, it's dumping out the head or the first six rows of our dataset, and below we have.

01:07:46 Daniel Chen
Some code that generates a histogram, so hist for histogram, and here you can see what before we just had the code. The rendered version has the output of the code as well. This is really nice because this is now an actual file, and I can send anyone the HTML file, or if I rendered this to a PDF, render document to PDF.

01:08:16 Daniel Chen
This will go and create the PDF version of that document, and let it do its thing. It's going to eventually create a PDF. Here is the PDF view of that same document. So you can see here it looks a little bit different because the default template for the PDF is slightly different. This is an example of us having one source document, which is the QMD file, and it can be rendered in two different formats. On the left hand side here, this is the PDF format. On the right hand side, that's the HTML. But both of them have this ability of here's the code, here's the output, here's the code, here's the output. PDFs have this notion of pages, so if you need to print something out, or if you need to make handouts, the PDF is probably an easier way to know where the line breaks are. This is, I can send someone a PDF if they don't know how to open an HTML document, or you can give somebody the HTML document if you have interactive components.

01:09:16 Daniel Chen
Personally, I think the HTML one looks a lot better, but not everyone ends up knowing what to do with an HTML document. And you can see right now the problem is rendering the HTML document in the browser, which is one of the problems that I'm running into. But that's okay. I'll figure out what's going on with the actual system. But what you should end up seeing is this HTML document. It's just in the raw HTML form, not the rendered form, and we can still get this version back to our repository. So let's just pretend that you saw the pretty version of it during the break. I'll go figure out why. That's how we get that? But the question now, and this is what's really important for your homework assignments.

01:10:12 Daniel Chen
You'll notice that I tried to make a PDF. The TeX file is the source document for PDF. It takes the QMD, turns it to TeX, and then makes the PDF out of it. But you'll see, we have the HTML document, we have almost a PDF document. But if we go to our original repository that we forked and we hit refresh, you'll notice that those files aren't there. I can save this file all I want. And I can do all of that, but this is that two-step process that I talked about. Which is just because you saved it and you looked at it and you're looking at the rendering and the code works and everything is fine. None of that is actually here, which is again the thing that we're actually grading. So if you keep that in mind, we are grading this site, not the code view of the site. Hopefully, that's a set of things for you to check.

01:11:09 Daniel Chen
So you'll notice that we only have the original source document here. How do we go and get all of these other files in here? This is the part of doing the manual version controlling. That's where this starts to play in. We have to go and create a manual checkpoint. The checkpoint is the only thing that the website sees. We'll do a whole thing around Git, the technical thing of Git later. But essentially, we have to go and create a checkpoint. How do we go and create a checkpoint? On the left-hand side, you will see this icon that looks like a graph with two circles coming out of it. This is the Git view of what has happened. We are under the hood. We're using this whole entire version control system.

01:12:05 Daniel Chen
Just like how Dropbox and Google Drive have their own version control system working behind the scenes, we have to manually version control or create our own snapshots in this particular course.

01:12:36 Daniel Chen
So what this is doing is it is keeping track of all of the files that you are creating and have changed in your coding environment. You can see here I actually went and added this line called PDF colon default in my document, and so it's telling me when I click on this here is the line that you've added or in my case here here's a line that I removed.

01:13:07 Daniel Chen
And this is why having those new line breaks become really important because you can imagine if this is really useful because this can very quickly tell you here's the file that you've changed and where those changes are. If you have an entire paragraph with 500 words in one line, that entire paragraph is just going to look red, and it's really hard to figure out. I just see a giant red block. What actually changed in this giant red block? And that's why you'll see a lot of people who work in this coding source format. They have line breaks everywhere just because it makes it really easy to see where those changes are. So it's much easier to review and look at your own work and your own progress when it's small versus this. The problem with a lot of LLMs and AI tools is it just makes massive changes and no one's reviewing that right. It's really hard to review stuff like that. So this saying oh yeah you made this change called PDF default.

01:14:03 Daniel Chen
Do I want to keep it? I probably let's say in this example no because it's not working right now. So I probably is this way of saying oh no we should get rid of this. What I can do here is come back to my document and delete that line, come back to the view of it, and you can see now it's only saying that I deleted a line here. It's like try now. I should probably put that line back as well because I do want that new line.

01:14:35 Daniel Chen
And so now you can see, that file no longer shows up here because that file doesn't have any changes. So this is really good for do your work, and then if you step out and you come back, you can always look at this and say, what has changed, and these are the files that have changed on your computer. The only thing is, there's other files, so this coming from Quarto itself. We can ignore this for now. But the only thing that we really need, and especially for the assignment for this week, is we only need the output, like this HTML output, and this HTML output represents the rendered form of that QMD document. So we have to go and create that snapshot. How do we go and create the snapshot? There's a little plus button right here. This says, "Hey, this is the file I want to create a snapshot of."

01:15:33 Daniel Chen
This is really nice because it gives you a little bit of control here's some other stuff we don't care about. I just care about the snapshot here. So that might happen as you start to work with other code things or get more familiar with code. You might end up in a scenario where you want to try something that's not this main document. You just want to see if code works off to the side. It might be another file, but you don't actually want that file in the homework assignment because it's just temporary off the side work. So you have the ability to separate things that you actually want to save to like things you're just testing out. So right now we see I tried to generate a PDF. It was unsuccessful. I could delete this file or I could just let it linger there. I'm not trying to actually make a snapshot out of it. So we're going to click the plus button and if you add something by accident you can click the minus button and that's going to get it ready to make the snapshot. How do we go and actually make the snapshot?

01:16:30 Daniel Chen
This is part of the version control system that becomes very manual. With my master students, we actually make sure that they tell them every single homework assignment they do, they have to do this snapshotting process at least three times. I don't think you have to do it for this course, but it's a very manual process. I make my master students do it because it has to be. They're in a masters of data science program, so there's a different set of expectations. But this process is very manual. Eventually, it should be automatic in the sense that if you have to do this step, it won't break your train of thought elsewhere. So we need to get the files ready for a snapshot, and then you literally have to type a message, which is like "quarto render practice report to HTML." You can write whatever you want as the message. In general, you try to make it roughly describe what you did.

01:17:29 Daniel Chen
Because if you look down here, this is the history of everything that has happened in this particular project. So as you make snapshots, whatever you type here becomes the text that shows up when you're trying to look at what you have done. The nicer you keep track of this, the nicer your history is. If you're looking for something, like let's say you're doing a bunch of cleanup and you delete a bunch of files, you can document or mention that you're cleaning up by deleting a whole bunch of stuff, just in case. If you deleted something by accident, you'll know which snapshot to jump to. You can imagine if this ends up saying like 'commit' or 'snapshot one, snapshot two, next'. That is not very useful in terms of what you have done. This is where that comes into play. There's a bunch of comics that poke fun at this.

01:18:21 Daniel Chen
And you can even see. I'll show you what one of my textbooks that we use, and you can look at the history or those snapshot things, and these are things I've typed right. This is a change to the lecture where I'm mentioning this, and this. There's some things that I've done with AI, so I put a little robot emoji. And here, other things that I've done, and this again, when I'm working with my other co-instructor, it's really clear when someone is doing work on updating something that they're asking, 'What was the last thing that you've changed?' So I have some context of what's happening. You can see here, my coworker, my co-instructor Ilya, he did some week one review stuff.

01:19:12 Daniel Chen
And he did some classification answers, so things. We're not giving the students the actual answers, right? And it's really clear for me to be that's what he's done. That's not generally touching what I'm working on, and that's fine. So where does this text come from? It literally comes from you typing it right here. So you have this file that's ready to be snapshot. Press the play button or the plus button so it's staged. So that's getting ready to be snapshot. You literally type the text. You hit commit, and that will go and create the snapshot down here. So you can see I now have Quarto render practice, and this is the file that was there. You can look at this was the previous set of changes from that previous set of snapshots, and that's what's there. And you can explore the history if you want.

01:20:06 Daniel Chen
For the most part, you probably don't need to do that, but that's where that's all coming from. You're not done yet, which is why this is a very tedious process. We have saved the snapshot, so those files are not there and in the history. But if we come back here and refresh the page, you'll notice that it's still not there yet. So again, it's a very manual process. You'll have plenty of practice with it as well. The next thing that you need to do is there are three buttons right here, and you need to push your changes to the main repository. We're working on one view of our project. We've created the snapshot. The next thing we need to do is send the snapshots to the actual repository. Click on the three buttons. You'll click on push, and it will run some command to send that off to GitHub. Hopefully, no error message showed up.

01:21:05 Daniel Chen
The way you can check to see if that works is if you refresh the page, you'll see that assignment or whatever document that you have show up. And hopefully there's a timestamp, like we just did this a minute ago. And so you'll do some form of that across all of your homework assignments. Yes, you're going to be doing work. You can create as many snapshots along the way. I would say do that more often than you think, just to get a hang of it, just to make sure that you understand that process. But at the end of the day, don't forget to make that actual commit or a snapshot and push it and send it off to the repository because that's how we are going to be grading your work. And then, this is your actual practice report.

01:22:05 Speaker 3
So I think I'm I'm almost out time. Let's see.

01:22:11 Daniel Chen
Is everyone done with that step yet? Does everyone roughly caught up in that context?

01:22:31 Speaker 2
Why are you stopped?

01:22:52 Daniel Chen
So if you're going through the actual homework assignment that we're having you do, we have the practice report. That's literally what I done. We're asking you to actually change your name, so it's like your actual name, and then go through that process. So I've just demoed submitting the HTML report. For the next couple of minutes, you can work on this section here, which is go and edit the QMD file again. Add a section called My Notes, and re-render the document. And the difference here is when you get to where's the thing? When you get to the part that's asking you to where you're making those changes, you now made a change in two files, right? Like it is the original source QMD file, and then also the new rendered portion with.

01:23:52 Daniel Chen
Your notes section. So I'm going to ask you. You're going to go through that process again. What should come out is you should end up staging like two files this time. One for the changes for adding your notes, and then the other for the rendered HTML format of it. So that is a change that's happening in two files instead of one file, and that will be this portion of the assignment there, and then the rest of the assignment is okay. Go and modify a change using a small R calculation, so you can write something like three plus three. That's totally fine. Again, we're just trying to get you to hand write a piece that is a piece of R code that is like an R chunk, and then that is essentially the context for your actual homework assignment that is due this week.

01:24:51 Daniel Chen
Go through and work through this coding environment. Again, the most important thing is when you do. I don't know why this is. When you go through the actual assignment, don't forget to click on the little Git button. That's the actual symbol for the Git source control. Don't forget to click the Git source control and then add those changes. And if you end up doing something where you end up like, I don't know, your younger brother makes a bunch of changes to that particular document. What's really nice is if we click on the little source button and you click on the file, you can see like, hey, it's showing you these are the new things that have changed. Right? I can also say.

01:25:49 Daniel Chen
Look at this document, and if I start deleting or doing something like this and save it, you can see if we look here, it's going to show up as you deleted a whole bunch of red text, and this is what you replaced it with. You didn't delete any text, but this is what you replaced it with. So this is really nice because if you want this set of changes, you can go through that snapshotting process. If you don't want this set of changes, you can right click, and there is a discard change button. And what that will do is, whatever those changes that you saw, it'll revert all those changes back. So now I actually get a file that was before I typed a whole bunch of random stuff on my computer. So that's why this snapshotting, the more often you do it, it's almost like if you wrote the R code and you're happy, just write, just go through that little cycle of creating the snapshot or the commit, just so if something were to go wrong, you can always.

01:26:46 Daniel Chen
Undo a piece of it. We have three minutes before our movement break. We'll just start our break now, and during this break, I am going to try to figure out how to get the online view to show you the HTML view.

01:27:10 Speaker 3
So earlier we rendered these source files, and if we edit these source files, does it automatically

01:27:17 Daniel Chen
Does it auto update? The answer is no.

01:27:25 Daniel Chen
Oh no! So there's this probably will be part of my figuring out what is happening. When you edit the QMD document and you render the source, when you edit the QMD document, it won't automatically update the HTML. But if it already exists, it will overwrite it. I now that you say that, I think part of the answer might just say "quarto preview." But we might we'll see how that does. Like this is very literally like I think I have a pop-up blocker.

01:28:17 Speaker 2
Here it is.

01:28:21 Daniel Chen
Hello, you. You can start your thing. Now is a good time. I've been killing time for the last ten minutes.

01:28:29 Speaker 4
There's so little of you. Was it this many people last time I came? No. We're actually gonna start seated for this stretch, and then we'll get to standing. So maybe just push back your chair so you have a little bit of room in front of you to do a little bit of a stretch, and we will get started. First one is going to be the figure four stretch. So you're just going to cross your leg over when you're sitting down, and push your knee down if you want more of a stretch. But if that's okay, just keep it like that. We're just going to get into the basic move first.

01:29:16 Speaker 2
And you said you have to get your laundry clean. You wanna know what's the sign mean? And you said play with me all the time. I'm sliding, nobody's gonna slow me down on the road. You can go ahead and set aside. I'm moving, ain't nothing gonna break my stride. I'm running in a world just round for you. I've got to keep on moving. You're on the road and now you're. We're gonna go into now pulling your knee up to your chest like.

01:29:50 Speaker 4
This, still getting the glutes, but we're gonna add a little.

01:30:00 Speaker 2
Ankle circles there.

01:30:16 Speaker 2
Switch sides. Same thing. Ankle circles. Sit in your chair.

01:30:30 Speaker 4
Extend one foot in front of you and you're just gonna lean over, reaching for that toe. Make sure you're

01:30:44 Speaker 2
Long. I've got to keep on moving. Never want another day like today. Nothing's gonna stop me now. Nobody's gonna hold me down. Oh no, I've got to keep on moving. Ain't nothing gonna break my stride. I'm running and I'm walking around. Oh no, I've got to keep on moving. Ain't nothing gonna break my stride.

01:31:16 Speaker 2
Now we're gonna come.

01:31:30 Speaker 4
Standing. We've stretched the whole back body. We're going to stretch the front body now. You'll start by staggering your legs a little, grabbing the same wrist as the foot that's behind, and you'll do a slight lean. You should feel it in your hip flexors. If you don't, then you can take more of a lunge.

01:31:54 Speaker 2
This.

01:32:00 Speaker 4
One's especially important to breathe into that side

01:32:04 Speaker 2
Taking the span of the ribs on this half of the body.

01:32:28 Speaker 2
Have you guys seen the off-campus building? I was walking over here and there's so much cheering. I really hope we're in the bathroom. Now I'm gonna do squats. Please just try. Hold on to something if you need for balance.

01:33:08 Speaker 2
You make my dreams come true. You, you make my dreams come true. You, you make my dreams come true.

01:33:46 Speaker 2
All right

01:33:47 Speaker 4
That's it for the stretch today. Thank you for participating.

01:33:52 Speaker 3
You.

01:34:36 Daniel Chen
That's how we have you do it. That's fine. I thought we could not do that. The way, so if you're in the textbook, there's an actual video walkthrough around how this all works. One of the, I was hoping it would behave the same way as the actual desktop view of it. But the way that we have you double check your work is if you right click this folder, there is a way to download this file because of.

01:35:17 Daniel Chen
Clearly, it's not happy with trying to open up a website in a website. What you can do is double check that work, download the actual file, and then in your downloads folder, you can double click, and then this is the actual report that's coming out of the coding environment. How does this work? There's one little important thing to make this work. This is really cool in the sense that you're probably used to just having single word doc files or PDF files. This is an HTML file. All of the code and to make this look pretty, the figures. It's actually all self-contained in this particular file. There's a little piece of code here that makes that all happen, which says embed resources is true. What that is doing is your code is in this particular case also generating a figure.

01:36:15 Daniel Chen
That figure is being saved in that particular file. If you look at some of, if you kind of care about what's happening under the hood somewhere, somewhere in this giant document, you can see like, hey, that looks really close to the actual table that got dumped out, and you would know that you would expect a figure somewhere below, and this that actual figure. And you can see this an example of like something that takes a really, really wide amount of text. So this is your actual figure. It's like encoded for the web, but like your computer knows how to read this giant like mess of a file, and it renders as a figure. So that's what the self-containing feature is doing. And it's converting the actual PNG figure and like turning it into this like block. And what that gives you is when you do save your file.

01:37:12 Daniel Chen
You actually have this single file to share around with other people, which is really cool. Because if you have interactive figures, like yes, you can see this file is pretty big. It's 1.2 megabytes, which is fairly big if it was just a plain text file. But if you have a big interactive figure, you can still save it as an HTML file. Just expect this to be a slightly larger download because all of that stuff needs to get shoved into this one document. So you're trading off fairly larger file size downloads for all of this other cool stuff. And for the people that just walked in, like yes, there's a video in the textbook which I clearly just scrubbed through, not all of it. But the way you can get the view instead of trying to get it to view in the VS Code browser, you can right click and hit download, and that's your way of double checking to see if that works.

01:38:19 Speaker 2
All right.

01:38:26 Daniel Chen
Let's talk a little more about the actual coding environment. This is VS Code. All of the stuff we have done in this code space or this GitHub code space, we've done the installation for you. R is already installed. We also have Python installed in this particular repository or this particular coding environment as well. We'll work with Python in a couple of weeks for a really small assignment, just so you can see how some of your code still applies to some of the code that you've been working with in the R world as well. Both of those programming languages are set up.

01:39:13 Daniel Chen
Part of the reason why we've set up the environment for you beforehand, just so you have Python's a slightly more complicated of an install, just to make sure everything is your computer can find it. So that's the problem we're trying to avoid right now. One of the other things around Git is you can see before in the previous example, I was making a set of changes and you have this ability to throw away changes. Yes or no. And again, this is the part that's really important to keep in mind. Just because you make a change here doesn't mean that being shown up in this in the actual homework repository. What we're going to ask you to do, if you haven't done already, is you're going to say my note.

01:40:11 Daniel Chen
And you're going to say what I learned today in class, and then what you're also going to do is write something that has to do with our code. So I have this patients data set. What I could do is there's a function called summary, and what that will do is generate a bunch of summary statistics for a particular data set. One of the things we didn't talk about, I just went and straight up rendered this document directly. You could run the code as you are working in this particular document. If you notice that in every single one of these code cells, there is a button for run code cell. What you can also do is select code and run command enter or shift enter. And what that will do is take that code.

01:41:07 Daniel Chen
And actually run it in the R console. So again, if we're thinking about how this code gets executed from beginning to end, if I had just typed this, it gave me this patient summary, a summary patients object, patients not found. Why? It's because R just started up, and I just said go and run this command. It didn't actually read in the data set yet. So go to the top of the file and run all the cells one at a time. The other way you can do it is in the command palette. There is a run all cells parameter. So what this will do is in the current document that you're in, it will just run all the cells from top to bottom. And that's a nice convenient way to make sure all your code executes from the beginning to end.

01:42:02 Daniel Chen
And you can now see that it would have loaded this dataset. I don't think because of how this is a browser within a browser. I don't know if it. I don't think it knows how to render a figure, which is annoying. But there is a figure. This code does get run. I don't think it doesn't pop anything out.

01:42:33 Daniel Chen
Or I might have a pop-up blocker that's blocking it. So figures, you might have to render the actual document to see your figure. But you'll see at the very bottom, it can run this command called summary. And what this will do, or this particular function for summary, is when you give it a data set, it will go for every single column, try its best to give you a whole sequence of summary statistics.

01:43:03 Daniel Chen
Define commands like the

01:43:07 Daniel Chen
They're all in the textbook. So you can run these cells one at a time. That's part of the things that you're going to be working on for this assignment. You can still test if things are working. And again, when you get to the source control view, you'll notice that I ended up making a whole bunch of changes. Those set of changes existed in this QMD document, and you can see they only happened at the bottom of this particular document. In this particular case, if I had put my notes at the top and the code at the bottom, you would see these green chunks in different locations. And again, this is why when you are working, it's really nice to make as many of these checkpoints as you can, because this view of your changes is smaller, which is a much easier way to double check if things are working.

01:44:02 Daniel Chen
Again, the other thing to keep in mind: just because I made a change to this file doesn't mean that the HTML got changed. It is a slightly extra step where you have to right-click to download it, unfortunately, in the web interface. Also don't forget when you are done to Quarto rendered the document, rendered the HTML, so the HTML file can actually get updated. And you could look at the diff or the difference between the HTML document that will typically show up. But usually, if you can see a whole bunch of things got added for some reason or another somewhere down here, you might be able to see that's the HTML bit of the stuff that I added. You typically don't need to look at the rendered output of it.

01:44:55 Daniel Chen
The most important thing is to try to do those two steps together. If you are working on saving this checkpoint, nothing stops you from rendering the document right now, and so you can add these two things in tandem. Oh yeah, here's the plot. When you ran the plot, it did create the plot. You just have to download this file and look at it, which is an extra step, but that's because we're looking at it in the web browser interface. Right now, I can actually say finish or do assignment one. Don't forget to add it to the staging area. You run commit, and then don't forget to actually push your changes up to the repository, so we can also go and see those changes as we're essentially grading your homework assignment. And again, when you refresh.

01:45:51 Daniel Chen
What you should be able to see are a timestamp. So if you know you just edited this file, it should say something like 'you just did it,' right now, a couple minutes ago or a minute ago. If you're taking a bunch of time and you're trying to push something, you refresh the page and it still says five minutes ago when you're like, 'I clearly just did it.' That's usually a visual cue to make sure double check your file and scroll down here. And what you see here should actually be replicated in your coding environment. Other things that can happen in your VS Code environment, and one of the things that might show up fairly often. At the bottom, we talked about this left hand side here. These are all the files that exist in.

01:46:48 Daniel Chen
Their repository, and you can move and see those files as you make changes to them. For all of the other assignments for assignment two, like these are non the non project based milestones. You'll essentially be working directly in this folder. So whatever project that you're working on in right now, all of your other assignments, the structure is already there. So when we get to assignment two, or if you want to get to assignment two is right there. Then you can follow the instructions, and you're again. Make a change to this document, render it the way we are asking you to render, and then add all those files and push those files up to GitHub. You'll notice that this says format is HTML and it doesn't have the include resources. So what that is essentially going to do is it's going to create a separate folder with all the figures in it. So it's not going to be in the document itself. It's going to create a separate folder. So depending on how things get rendered, and we'll talk more about it when we get to assignment two.

01:47:47 Daniel Chen
Depending on how things get rendered, you may add more or less files to get it all working on the other end. These are all the assignments in the assignment folder, but this particular view is exactly the same as what you see here. You kind of saw it down here at the bottom when you were running R code. It was getting run sort of down here, in this little bottom section. There are two different consoles happening. This is the part that gets really tricky. If you see something that looks like the folder name, like this, this is the blinking cursor mode, like how you double click and open up files and type commands.

01:48:45 Daniel Chen
To the actual computer itself, this computer exists somewhere else on the internet. This is how you talk to that particular computer to tell it what to do. That is not the same as when I am running some R code and I'm telling the computer to run that particular piece of R code. One of the ways you can very quickly get into R code mode is to run a piece of R code, and you'll notice that the part where it's asking you to type commands is slightly different. You have one that looks like this, which has your username and a whole bunch of stuff, and then the other one that looks like this, which is just a very simple greater than symbol. That's how it serves as the visual cue: Are you in terminal command entering mode for talking to this computer, or are you actually trying to run R code when you're talking to this computer? So that's another part that is happening in this interface.

01:49:42 Daniel Chen
It does end up being very confusing because sometimes you might think yes, you could copy and paste code here and run it, but if you try to do that here, it's not going to work. So there are two different almost languages that you're using to talk and communicate and have the computer do something on that end. The reason why I bring that up is sometimes when you are working with code and you run things out of order, or you want this notion of I just need everything to start over because I've been maybe creating and typing and copying pasting some code down here, and now you're in a state that you don't fully understand. How do you actually turn off R and turn it all back on? The easiest way is whenever you're in this terminal view. So these are the direct commands that the computer is trying to run. You can literally click the trash can.

01:50:38 Daniel Chen
Trash can throw it all away, and you'll notice that when you open up the terminal view again, it'll give you that normal command view for the computer. But if you go back to your R code and you run that piece of R code, you will have R start off again from the very beginning, and that's really useful because you might be testing out code, you might be trying to load something. And then all of a sudden, none of your code is working. The easiest way is to turn it all off and then run your code from top to bottom again. And then hopefully, that part that you get stuck, that's not working, you can at least guarantee or at least you can tell us that you've trash canned all of the terminals and you reran it, and this is the current error message that you have. Again, when we're testing stuff out, I don't always type all of the stuff, all of the code that I'm testing.

01:51:33 Daniel Chen
And so again, you could end up in this weird state of what if I changed my patience variable to the number three? So now it's not an actual data set anymore; it's just the number three. And here, it's probably going to not be very happy. How do I know that happened? I don't necessarily know. So I might again trash can all of my terminals and then run my code again from the top to the bottom, and that should have that code run again. That's one of the interfaces for this particular environment, and that's pretty much a quick overview of VS Code. We'll talk more about the actual chat stuff.

01:52:31 Daniel Chen
Later on, this terminal view is where all of your output will show up. The other way it shows up is if you render the document, and you'll go through all of your homework assignments that way.

01:52:43 Speaker 2
Cool.

01:52:52 Daniel Chen
Cool. And I think that's most of what we need to cover for today.

01:53:09 Daniel Chen
I know. We walked through the homework assignments. Everyone completely finished the homework assignment for this week by now. Is the answer yes or no? I think that's it. I know we build in time for you to actually work on your homework assignments in class. So I think that's really everything. We can ask you all questions if you have questions one at a time. The other thing to please remind yourself to do is you can. Where is the button for code spaces? Just as a reminder, when you're done with your homework assignment, close the actual code space tab, so everything actually shuts down.

01:54:07 Daniel Chen
I believe if you leave it inactive for a couple of minutes, it will automatically shut itself down. So just make sure this isn't actually running on your browser when you're done, just so it's not on all the time. And that's the other thing to keep in mind. So close off all your tabs. I think there's a button somewhere that I don't know where it is in Code Spaces to formally shut down the actual server, but that means the server needs to boot up again. So just keep that in mind. And for now, you can work on that particular piece of the homework assignment if you haven't already. And I will walk around to make sure that you fork the repository. You can make those Git changes, and you can push those changes up to the actual course repository. And then for the submission, is your repository that you're submitting, like that URL of your fork.

01:55:03 Daniel Chen
You're just submitting that as the URL for us to grade, and then we can see everything from the online Git repository. So you have like an hour to work on your homework assignment. If you have any other questions, we can talk about that. The next part, the next week, we'll actually start using the Copilot AI portion of code spaces. First, get a handle of how to run and use some type of R code, and then we'll have next week. We'll slowly start putting in how you can ask questions for it to generate R code, and then we'll again like the first lecture talk through each of the output piece by piece, so you're able to recognize what it's trying to do and confirm the output as we're going.

01:56:04 Daniel Chen
So I will be here walking around until 45 past one, just so I have a slight buffer room to run over to my next class. If you're completely done with the homework assignment, feel free to leave. Otherwise, work on your actual homework assignment so you can actually finish it in class. And if you have any questions, just raise your hand and I'll be walking around.
