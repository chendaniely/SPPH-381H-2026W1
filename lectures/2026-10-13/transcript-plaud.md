00:00:00 Speaker 1
Progress.

00:00:46 Daniel Chen
All right. Hello. Cool. Okay. All right. So we are pretty much coming up to the final set of like I guess coding lectures is or coding specific lectures. A lot of the other stuff is going to be around. What else can we do more? Like, what other things can we do with code? So up until now, at least the data processing features of R and Tidyverse we've kind of talked about for the last. I think we've had like two or three lectures around it. Last week we talked about Git and GitHub. There's one more demo that I'm going to show because I guess I just realized that I didn't show the last piece of it.

00:01:42 Daniel Chen
And today we're going to talk a little bit about, sort of reiterate the fact that you should be able to use an LLM to help you understand code that you probably haven't seen before. Specifically, today we're going to switch languages a little bit and talk about how what does the same data processing steps look like in Python instead of R. The entire course is really in R course, but as far as data science languages go, Python is very popular, if not more popular than R, depending on who you ask. So, we're going to go through a couple of Python examples, doing the same things that we have seen in R, and you'll see if you kind of you can use the LLM, but knowing the steps already from the R side of things kind of makes.

00:02:39 Daniel Chen
Reading code or understanding code in a different language a little bit easier. So if you already know the steps around this is what it looks like to summarize data in R. Looking at the code for summarizing data in Python is going to be not that more surprising. There's going to be different words, but the once you learn the word and then since you already know the overall step of what's happening, that part makes things a lot easier. One other thing about this week. If you are in the course textbook, there is a section around assignments for assignment schedule. This lists all of the assignments and their due dates. We are currently right here in this phase of the course, so this essentially concludes all of the check assignments marked for completion part of the course. The rest of the assignments.

00:03:37 Daniel Chen
Now on have us essentially a grade associated with it, and we take the best four out of the six grades. The other thing is in two weeks, so on the twenty sixth, there are two assignments due. Part one of those parts is the first part of the group assignment. So last week or yesterday, what was due was the.

00:04:07 Daniel Chen
What was it? Just getting the repository set up, and you'll end up putting together the proposal in two two weeks. Is that right? Yeah, in two weeks. And we would have covered next week the course. The class is talking about data visualization, so pretty much everything that you would mostly need to get the data part or the analytics part of the course would have been. At least you've seen how all of those pieces work together. All right. If you haven't done so for today, I make sure you have your workspace open. For some of you, if you deleted it, remember it takes a bit of time to start up. So just have that loaded up because I'm going to do some other stuff that will take up some some time, and we can wait for that to load up. So just to make sure I have it loaded.

00:05:08 Daniel Chen
No, no, no. Yeah, so you can see, like, if you kind of leave it alone for a while, it'll close itself. So I need to make sure that this is going to start, and then yeah, okay. I think that that's that's just that bit that it's going to start. All right. So one piece of the demo.

00:05:38 Daniel Chen
One piece of the demo that we need to talk about is so I'm going to go through the pull request process really quickly, sort of as a review. So let's we talked about this last week. So how do we go and create a new branch? So remember, branches are our way of, Being able to collaborate with somebody else, but still being able to do our own work, and then we can do our own work independently. As long as we get our work somewhere, committed and pushed into a branch, at least your work is essentially saved somewhere. And if you run into issues, then at least someone is able to be there to kind of help you out, because we can see all of those pieces. Usually, if it wasn't in this particular class.

00:06:32 Daniel Chen
We usually have a little bit more, a couple more weeks, or it's another class where we say, "Hey, practice Git on your own first before we do and incorporate all of this branching mechanism." But we are kind of trying to get everyone ready for the group project, so we'll see how that goes. If you have any questions around Git, you can always come to me before, after, email me, or the TA. And we can always help fix those things. All right. So first thing, I want to make a change to this repository. Let's say for in this particular example, I'll just create a file that has my name on it, and that'll be a placeholder for some type of change that I want to make. So, let's say for example, how do we go and create a new branch?

00:07:29 Daniel Chen
We're going to the first thing that we want to do is we want to go to our little branch tab. We want to make sure that we are on the main branch, and there is a little button here that says pull. So if you remember the diagram that I drew last week, which did I take a photo of that? I don't think I took a photo of the chalkboard, which that is my bad. If you remember from last week, there was a piece of the diagram that said that looked like this, where I had a cloud, and then there was this piece that was your your laptop. Technically, your laptop right now is also in the cloud, but so it kind of looks like this, really. But it really is where where you actually typing your code. There is.

00:08:32 Daniel Chen
There's two commands that I'm going to. This is the part of the demo that I'm going to just reiterate. There's two commands that we need to learn on the Git side. That says how do we synchronize work from the place that we're typing to the place that exists as a repository. So the first thing is let's get something onto the GitHub side. So how do we go and create a branch? We click on main. We click on the main branch here. And the first thing you want to do is you want to make sure that your main branch is in sync with what's there on the remote. So this is known as the remote, and this is, for example, GitHub. So that's the example. That's kind of the state that we're in, and that's what the words mean. So I'm going to run git pull, and that's all. That's going to say is if I'm on my main branch.

00:09:29 Daniel Chen
I'm going to say no to this, so it becomes very manual. You could, in theory, click yes, and every couple of seconds or minutes, it will essentially run a version of Git pull for you. So I'm going to say no, just so everything's super manual. So you want to make sure that you pull from the remote's main branch down to your computer. Why is that important? That essentially says if another teammate made an edit and merged, and you merged it and everything. You can get those edits back on your main branch. Otherwise, those changes exist. They exist on where's my mouse. They exist on the GitHub repository or the website, like right here. But you don't actually have it here. Where if somebody just said, "Hey, I have my clean data and the data set's there," you still won't see it. So how do you go and get the code from GitHub? There's a pull command, as in like, "Hey, how do I update what's on my local computer?"

00:10:28 Daniel Chen
So you run that first, just to make sure. If you're going to start a new branch, you're always starting off with what the team has already decided. Is like here's the starting point where everything works. Okay, so first step, we're going to create a new branch. We're going to create a branch. We'll call this add name, and all that is going to do is, if you remember the like diagram or circles from.

00:11:07 Daniel Chen
We Have a couple of commits. That's on the main branch. We are currently here, where we just created a new branch. But we're going to make a commit on the actual branch that we just created. So the branch itself is moving up forward, but the main branch, the one that we started off with, gets sort of left behind. So that's what's happening here. You can see we're on the add name branch. You'll see down here we're also on the add name branch. And I can go and create a, I can do whatever I want here. So I'm going to say I'm going to call this Daniel.txt. Right. So I'm going to say hello. So I'm going to write my name. And there's a file that exists there. I look at my Git tab.

00:12:01 Daniel Chen
And it's going to say, hey, there's this brand new file I haven't seen before. That's what the U stands for. If it's an existing file that you've already started tracking, like if I were to, if I had edited the README file or another piece, another file that is code, then this would say M for modified. As far as that you're concerned, like you can probably ignore all of those letters on the right hand side, but that's what they mean. And we have to go through this add commit process, right? So how do we do that? We have to literally click the plus button. You'll see that it is staged in a staging area, and I can put in a message that says "create a file for." So I'm going to click commit, and then that staged commit is I just made this circle or this commit right here on my computer, and you can see that's represented right here, where the branch that I'm on is now one ahead of the main branch.

00:12:58 Daniel Chen
And then we go through the pull request process. So we're going to click publish branch. You can see there's there's an actual button here that will create the pull request for you. Feel free to push click that button if it makes it a little bit easier for you. But on the GitHub page where the repository exists, we have this nice little green button that says create and comparing, create pull request. So this again is. Your first line of defense, or second line of defense, depending on how you're counting, for you to review your own work. So I'm here. The other thing to pay attention to is in your group project. This is going to say base main because your group project was a template copy, right? So that's that part you kind of leave alone. For your non-group project homework assignments.

00:13:56 Daniel Chen
This was the other, and I'm recording this, so like it's also really clear. For the non-group project repository, which is your normal assignment, so the the actual workspace assignment, you can see in our repository it says forked from, and it came from like one of our co-instructors' repository. When you first started the course, we had you click like this fork button. So if you remember. Everyone at one point clicked this button, and that's how many students are in a class who all click this button. That's how you're submitting the homework assignments. For your for those homework assignments, like the one that we are going to work on today, you want to make sure that this button here actually has is pointing back to your group repository, right? So by default, because you forked it, it's going to say.

00:14:46 Daniel Chen
Asan's repository, et cetera, et cetera. You're going to create the pull request, and what's going to happen is, it's going to look like this, which is like, see, see all of this. This is, this everyone sort of submitting it to the wrong place. This you actually trying to make a change to our original repository, which is not what we are, not what we've asked you to do. If you work in larger Big open source projects like if you want to contribute to like R or Tidyverse and things like that, this is the process that you do. But for for this set of examples right now, all and I'm going to close these by the end of the term. All of this means that when you were comparing where things were, the base branch was set to the wrong location. So that's why if you had created that pull request and you're like, where did it go?

00:15:42 Daniel Chen
I don't see it in my own repository. That's why you went. You went to the original source repository. Templates sort of are not forks, so there's no like source repository like a fork is. So there's two different types of places to look for in this particular class. So as far as your group project is concerned, this visually check should say base main. If it says any other username that is not, Base main, or it looks like it's one of the instructor repositories. Then click on the drop down. Make sure it says the your own repository version. This next one is going to it should say your own branch name that you just pushed up. So that's where you see that. We can have a title right here. You can add a description. Fill those out. the The more you fill it out, the better. It's a good practice to start filling it out. So like here is an.

00:16:43 Daniel Chen
Right, and then you can go and review the last everything that you've just contributed to down here. This is important because sometimes you end up with files that you don't necessarily want in Python Jupyter notebooks, which we'll see a little bit today. You might end up with these like temporary checkpoint files in Courto. If something stops building in the middle, you'll end up with this folder that says. You'll end up with a folder that says .qdo somewhere. Sometimes it'll also be whatever your file name is. Underscore files will exist. Those might be things that you will ignore. So depends on the state of rendering and other things. If you're working with images, like I said, up to you if you want to check in those images. What ends up happening is you might end up overwriting, like deleting it and overwriting images. So I would say.

00:17:41 Daniel Chen
For now, probably the best way, especially when you're practicing, is to don't manually like don't add those images as you're making your commits because in theory I should be able to render your document and see your images from there. Okay, so we're going to click on pull request, and then this. Right here, this is the part where if you go to your own repository, click on pull request, you should see the thing that you just made. If you don't, especially for your personal, your individual assignment, homework assignments, if you don't see it in your username, you probably sent it to the wrong place. There is a way to change it, but just so you know, if you don't see it even after you refresh it, you sent your homework assignment to the wrong place, and you, I believe, you should be able to click the little.

00:18:37 Daniel Chen
Pencil and then this main. I believe you should be able to change it. So that's how you confirm that you are sending things the right place. Clicking on files change. That's where the code review happens. You can have a conversation here. You'll click on the merge pull request button. That will merge everything into the main branch. And I'm going to delete it just for that is sort of a habit. You can keep it there. The only downside or upside, if you will, is the if you don't delete it, it'll constantly show up under this branch tab. Branch tab. Up to you if you want to keep it. I try to keep everything as lean as possible, so there's things that I end up deleting fairly often. But if you're not comfortable with it, we're not mandating that you go and delete it. Okay. So that was me making a change to the main branch.

00:19:35 Daniel Chen
Just to prove to you that the main branch is different down here, I can click on the little branch name and I'll go to main, and you'll notice that the Daniel. txt file does not exist there, right? I can also, on GitHub side, let's.

00:19:52 Speaker 1
You can.

00:20:06 Speaker 1
This.

00:20:08 Daniel Chen
That's the markdown text for it. Okay, you're not helpful. Okay, so let's say for example, I am in this particular demo, going to manually edit the file directly on the main branch. That's going to be a placeholder for someone else, like your teammate, clicked on the green button that you didn't even know about, right? So. What? How can this file change without you knowing? Well, if you're in a group of three or four people, maybe the other two on like Friday night were working on the project or something, and they work together, and now there's a bunch of changes onto the main branch that you did not know about, right? So you're not always, you don't always know that something has happened in the repository. So we did two things: we merged in the main branch, but we also made this other change to the file.

00:21:03 Daniel Chen
Without us knowing, so let's say we come back. It's Monday or it's Tuesday, and we are now back onto our our project. And we finished everything that we wanted to go work on. We're going to work on the next next task. The first thing we're going to do, we're going to make sure we're on the main branch. So I'm going to click down here, make sure we're on the main branch. I believe you can click the little sync button down here. I I don't want to click it because I want to show you the diagram version of it. Feel free to actually click this button. I think it will do exactly what I'm going to show you. So what we're going to do is I'm going to go to the main the Git tab and I'm going to run Git pull. And what that's going to do is there was a bunch of changes that ended up happening on GitHub. So on this diagram, it essentially looks like.

00:22:03 Daniel Chen
We have three, and then like these are two more changes, but we ended up merging it together. So yes, right. So we have those two commits that happened on main, even though all of this branching stuff happened on our local computer. So I need to synchronize work from GitHub down to our local computer. So that is where the push and pull commands come in. So we're going to say git pull. And then you can see the graph will kind of update. Here are the two. This from doing the pull request. This doing that change that we just made. And now, if I look at my file, you can see here's the the file and the line from my original pull request. But then someone, even though it's myself, someone made another change to this document that I now have access to. All right. So that should complete the entire loop around Git and GitHub.

00:23:02 Daniel Chen
Right, so sort of a review. You'll probably be going through this process very often, especially for your actual group assignment work. Okay, so today, let's start on today's project. I'm essentially we'll we'll spend some time going through a couple of examples.

00:23:33 Daniel Chen
And essentially, hopefully by the end of today, you have like the starting point for today's homework assignment or the homework assignment that's due next week, sort of done.

00:23:56 Daniel Chen
Okay. So, what I'm going to do is. We have code spaces open. That's fun. This this always changing. Oh yeah, it's on it's on. I guess auto is fine. Yeah. I haven't. This like a research preview, so we're just going to leave it on balance for now. Okay, so.

00:24:33 Daniel Chen
I am going to ask the LLM to sort of start and mock up a Quarto document. So what I'm going to do is I'm going to right click this, and you can see here there is this ability for any file or folder that you copy, you can copy the full path or the relative path. So remember those are different ways we can refer to a particular file on our computer. Since we're in GitHub Codespaces. These two things probably don't matter as much, but when you're working, even when you're working on your own group project, I believe in this particular course right now, it won't really matter too much because everyone's technically working in the same, like cloud compute environment, so it's almost sim simulates the same computer. But there's still a chance that if you look at the full path of something.

00:25:34 Daniel Chen
Deny copy path. Yeah. So here's the full path. It begins with a slash. That's how we know it started from the beginning of the computer. And this pretty much will look the same for, depend regardless if you're on the group project or not. But if you were to do this on your own computer. The full path would have your actual computer's username in it, and then that hinders your ability to share code with other people without them having to like change the file and folder where you stored this particular project. Right. So another way you can think about it is, I have my own particular folder structure on how I want to deal with coursework and schoolwork and all of that. You have your own folder structure. We don't need.

00:26:26 Daniel Chen
We only care about the folder that we're working in, or the actual project folder. We don't care about all of the other stuff. On whether or not you have a folder called UBC, I have a folder called Work. Those are different things. I had my username on this computer is called Dan. Not everyone's name here will have a computer named Dan. So we don't particularly need the. You want to get in a good habit of not using the full path of things. So we are going to use the relative path, which only starts from the folder or the project that we're in. So you can see we are already in the HDSX workspace folder. So from there, how do we get to that particular folder? So that's again a small review between absolute relative paths. You've already worked with this by loading up data for the assignments that we've been working with. Okay.

00:27:21 Daniel Chen
So let's use the actual agent to say create a Quarto document that has an example A4 title and placeholder for name. You can create a simple R.

00:27:48 Speaker 1
Code chunk.

00:27:56 Speaker 1
All right.

00:27:57 Daniel Chen
And I didn't. I hit. Can I edit it? Place, place the file in that location. Okay, so here's my sort of set of instructions. What do I expect to see? I expect in this submission folder, other than the class assignment, well, this assignment zero four. That I should expect a Quarto document there, right? So, this is again an example of how coding agents differ from talking to ChatGPT, the web interface, right? If I were to give this to ChatGPT, it would probably give me instructions back that say, "Hey, in order to do this, you would right-click this, do whatever, and then here's an example Quarto document you can copy-paste," and it'll it essentially.

00:28:50 Daniel Chen
Can't modify anything on your computer, so the best it could do is try its best to give you detailed instructions on how to do something. Coding agents, like what we just saw here, have access to the computer that you're working in, and so it can. Why does it need to give you the instructions and have you do it when it can follow its own instructions and just do it for you? And that's where you can see I created assignment zero four QMD. I don't know if that's the actual assignment name that we had you do for. That's specified in a homework assignment, so maybe that's something that you might want to feed it. Like you could, in theory, say, "Here's the homework assignment link. Go and do it." And then it might actually go and populate as much of it as it can. It might go and read the homework assignment and try its best to like do everything as specified in that set of document. But just because it created a file doesn't mean it actually works, right? So there's a there's still like this human in the loop around what is happening.

00:29:50 Daniel Chen
So it said it created assignment zero four. Maybe that is the file. Maybe it's not. You can see here. On first glance, this looks not bad. It looks right. It's in at least the folder that we're looking for when you're submitting homework assignments. It's a QMD file, so it kind of knows what Courto is. Courto's been around for enough years that it should know the basics. If it starts to do things. Not exactly the way you want. Well, the way you instruct the LLM how to change its behavior is well, you have to go and tell it. One of the ways you can tell LLMs how to change its behavior is you can say here is Cordo, no, not Coral. You can say here is the.

00:30:47 Daniel Chen
Quarto reference page, and you can literally just paste it there and be like, follow this set of. Here's the here's the documentation for Quarto. Use this as a reference page, right? One of the examples that happened, kind of recently, was in my master students class. Was we were talking about using Quarto to make slide presentations, which we'll talk about in this class as well. And one of my assignments or tasks to them was, if you start having text that is too big for the slide. Quarto has a built-in way to make the text a little bit smaller, but if you didn't know that and you just said, "How do I make the text smaller on this HTML slide?" Quarto essentially was was suggesting like, "Oh yeah, here's all this like web infrastructure HTML CSS modification you have to make to make the font a little bit smaller." But in Quarto, it was literally like a one-line change that said, "Hey, make the font smaller." Like.

00:31:45 Daniel Chen
Font smaller is true, and then all your font is smaller. That was an example of okay, ChatGPT didn't actually know that there's ways to do this. So if the student had essentially here, if they essentially said like, here's the documentation page for HTML slides in Quarto. There is a reference right here about how to make the text a little bit smaller. If they had just even pasted this link in there, it would have gotten the answer correct. So there are reasons why you want to learn the tool that you're working with because the LLM might not do something the way you want, even though the answer might, the final result might look correct. Internally, it's like doing something really wonky, and then that becomes a problem when you need to share your work or when other people are like, "Hey, can you make this change?"

00:32:42 Daniel Chen
Now the documentation doesn't make any sense anymore. Like even later on when you're like, oh, I found the Cordo documentation. Let me go and read it. Now all of a sudden it's going to be, I have, it's going to start making a bunch of changes to go around this thing that you probably should have caught fairly early, right? So you can. Where did my thing go? Okay. So anytime the agent needs a little bit of help. I try to just find a documentation page and be like, look this up as a reference. I do that all the time, where I can be a little bit more sure that it's doing what I am expecting it to do, because I'm literally saying, here's the documentation page that has all the instructions and commands that you need to know about. Use this, and don't try to start making stuff up, or don't try to find your own workarounds around things. So you can also see here, I'm.

00:33:38 Daniel Chen
Fairly verbose. I'm fairly detailed in the way I want to talk to this model, even though I probably could have right-clicked and created this a lot faster on my own. This sort of just, again, is guaranteeing or getting me a higher chance that it's going to create something that actually works. So I have a title. I have an author. So maybe I can change here and put the author. There's the date. The format is going to be HTML.

00:34:08 Daniel Chen
And that part looks okay. It does look like it's a proper Quarto document because there's some R code and it's got the code cell highlighting behind it. So there is the editor is being able to is able to see the the difference between regular prose and code, and that's good. I can run individual cells, and that looks like that is running. And this is an example of something. And remember from earlier glimpses, a glimpse of the data frame that gives us column data type and and values. So that that looks correct, right? So so far the agent is doing what we want. So the next thing that we can do is I want to load up a really specific data set. So in our project, so here's the root of our repository, we're.

00:35:07 Daniel Chen
Our files in the assignments, but if we look at getwd, you can see that the starting point it expects is the starting point of the repository or the root of the repository, and I want to load up this data set under examples enhanced equity, and I want to load this data set, so I can copy the relative path, and then I can say something like instead of.

00:35:39 Daniel Chen
An example dataframe. Please use that. This part of the. This one of the places where it kind of works in my favor, that not having spaces in my file name. Sort of, it's another hint that like oh this the actual full path of something, versus oh the. The file name is where the first space is. Sometimes things can get a little bit confused. If you don't want that confusion, you can wrap it around quotes or in Markdown syntax, it's the backtick. And the models are typically pretty good to see. Oh, yeah, that's the entire path of the file that I want to work with. Is that going to work? Yeah, that's not going to work. Yeah. So it kind of made a mistake, right?

00:36:36 Daniel Chen
It replaced the empty data frame, so this is again the agent going and modifying the file directly, and it sort of understands this sort this older model of the working directory is where the file is. It's not necessarily where the project root is. Maybe that changes for how the file renders, but. Right now, if I'm trying to run these individual cells one at a time, it's providing the wrong relative path for us. Right, so here's an example. It kind of gave us a partially correct answer, but if we actually go and run it, you can see it's not actually running. That example code is not running properly. So, how do we go and fix it?

00:37:30 Daniel Chen
I can either tell it like please use it, please assume that the working directory is from the root, so I can do that, or I maybe you know enough about pathing that you know to get rid of the dot dot slashes, right? So there's a couple of ways you can do it. I can say don't use the relative path from the file, use raw path from the project root, right? So I can tell it. This is the problem. Again, writing this sentence requires a little bit of knowledge around the stuff that we talked about in class, right? The I can't just say, "Oh, that didn't work." Like it's going to be, I. It has no idea. Like, what do you mean it didn't work? So, your ability to prompt the agent is will still. If you want to.

00:38:28 Daniel Chen
Do it in as few turns, or as few, I guess I don't know what the non-technical version of turn is. As few inner back and forths between you and the actual model, then knowing the technical term of what is happening does help guide the model very quickly into fixing it. So that's why I'm saying. Don't use the relative path from the file. Use it from the project root. There's a lot of hints around. Like here's the thing I actually want you to fix. Again, could I have just manually fixed it myself? Yes, I could have totally done that. It right here is going to ask me, hey, I I want to go and run some code in the actual terminal. You, we haven't really talked that much around terminal commands, but.

00:39:20 Daniel Chen
It is right now trying to library or run some R code directly, so it's probably going to do something slightly different from what I even expect. So we'll say, okay, you can go and look at the files. You can use the here function, and let's see what this ends up doing. Yep. Okay. So it ended up. What did it do?

00:39:50 Daniel Chen
Okay, so if we look at the okay, so it's telling me that there's already a Quarto YAML thing here. Okay, yeah. So it's trying to figure out, oh, why did it why did its original solution not work out? It's because, well, actually, our project that we have right here. We actually set this up already, so it didn't know this existed, partially because we never really told it that to go and look there. So it wasn't until hey, here's exactly the problem that I I have. It went and go went and checked like why did its own solution not work, and then it found out that like oh this is a Quarto project. Let's look at the actual Quarto YAML metadata file. Oh, it sees this.

00:40:45 Daniel Chen
So actually, you were right this entire time. Like this is an okay way, a proper way of running it. And so you can see the model itself is editing and doing a whole bunch of stuff to to the actual files on my computer. Again, really different from you typing in in ChatGPT. It's usually that cycle is oh maybe go and try this. And then you go and do whatever that says, and then you copy paste the error message back, et cetera, et cetera. That ends up being slightly problematic too, because again, it doesn't always have the ability to just start looking at places on your computer. So right now, I guess whatever the command that I accepted it to run.

00:41:39 Daniel Chen
It's typically not able to run that directly. So what ends up happening? It's maybe it's like, hey, can you run this in the terminal and paste the output to me? That's probably what it would have asked you to do. Or it would take another guess, and then you would just go and try, and then maybe you get a better answer or not. So again, using the knowledge of what you have, using those keywords in how you're prompting, definitely goes a very long way in. Understanding the problem for both parties involved, like you and the model, but also it can get you the answer a lot quicker. And then this gives me a lot of confidence because it's oh yeah, I totally forgot this file was there. Oh yeah, that's true. This this does exist there. I worked with Cordo enough to to see like oh yeah, that's right. That is the right parameter. If it's not something that you're you're used to, again, you can say what does what does mean in the.

00:42:36 Daniel Chen
Right, you can actually ask that question back, and then just have it come back to you. Maybe you can even say, "Can you can you find this?" Right, and sometimes I will do this as well. Like, did you just make this up? Like, go and like give me the actual link that proves this. So here, maybe that's a real link. So that is a real link. So I can go here. And maybe I'll open this, and then here's the actual. What is it called? It's called executor. Right. So I can go here, and like this is the official documentation for the execution directory, and I can go and confirm that. And again, I am now.

00:43:34 Daniel Chen
Learning something new, learning how the tools are working, by sort of discovering it and having this conversation with the LLM, improving to my and having it guide my own learning at the same time. Okay, so I'm going to paste in some code. We'll take a little break, but at the same time, you'll, as a class, work on this. As well, so we can call this pipeline one. We'll call this pipeline one. Okay, so this is in the actual textbook, but let's go through and see what this code is doing, and then you will go and.

00:44:30 Daniel Chen
Write a prompt to sort of try to generate this code on your own instead of trying to type it out. So we have nHains. Let's just make sure is it even the nHains data frame. So my examples right here are don't match what the LLM gave me. So maybe the first thing right now is, hey, let's actually call this the nHains data frame and run it. Okay. So we have the nHains data frame. That's the data that we have. And again, how do we generally? How do I read?

00:45:00 Daniel Chen
Let me make this a little bigger. How do I typically read, deploy, or tidyverse piping code or pipe pipeline code? I just look at the main functions that are being called. So there's a filter. So if something's getting filtered down, group by, summarize, and then we're doing some type of calculation on what's filtered. Those calculations are by group. There are multiple groups here. So income group from the previous courses. I know that there are three income groups here. Gender in this particular data set. There's two. It only lists male and female. So right now, I should just knowing the details about the data, because it's group by summarized. I should expect about six rows in our data. Right. So three groups in income, two genders, two times three, six.

00:45:55 Daniel Chen
There is going to be some summary statistics. There is one, two, three, three actual calculations being made. It's dropping the group automatically, and then there's an arrange, which is sorting the actual results. So, what should I expect? I I should expect a data set with less than the total number of N Hains data. So N Hains comes with one hundred and five. Thousand rows, we're filtering such that these variables that we are grouping by and making calculations for that we care about are not missing. So it's going to filter down some of those rows. Then we're going to go and do a calculation of some sort. We're looking at the count per group, so the count per group or group set. We're looking at the mean BMI, which is looking at this.

00:46:50 Daniel Chen
We don't necessarily need na drop na equals true because we've already dropped them up here. We're also rounding it to two decimal points, and then we're also looking at the standard deviation. And then we are going to go and arrange that particular dataset. All right. So we'll take a five-minute break, and then come back at 52 past the hour. But then Start thinking about how would you prompt the LLM to like give you this particular piece of code if you don't have to type it by hand, and you can have multiple prompts at the same time. Right, you don't have to write this all in one giant go.

00:52:45 Daniel Chen
Okay, are people following along by any chance? Do you do you have some code that's working? Yes, no. Okay, all right. We'll look at the results for this. And if we look at the results, this is the case if I was writing this code myself or. Writing the code not by myself, or reviewing the code. If you were, you can also think of an LLM is your other teammate who wrote their code and submitted it for review, and now you have to go and figure out if this code is working properly, yes or no. So if they say, "Hey, here's the results," this kind of makes sense. Like when I was thinking through the problem before I even ran it, I suspect that there would be.

00:53:41 Daniel Chen
Knowing what I knew around three income groups, two genders, I expected six rows. Why? Because group by summarize would have each one of those summary statistics calculated for each each permutation of the groups that we have picked. So six came out. I expected six. That looks great. Why is it kind of sorted in that way? It's because there is this new function. I believe it's the first time I'm showing it to you, around a range. So, again, if we didn't have it around a range, that's totally fine. If you never prompted it that way, this might have been the way it's set up. And it's, and you can see here is going high, low, middle, right? And so, this is where.

00:54:37 Daniel Chen
This is something that has nothing to do with code, and it has to do with your thought process of trying to figure out what you're looking at and what is the next question that you can ask about the data to make it either easier for you to understand or for someone else to understand, depending on what you're presenting. Right. So if I am given data like this, that's kind of, Like a weird mental jump that I have to go through, which is why is it presenting me data from high, low, middle? Wouldn't it be nice if it was high, middle, low, or low, middle, high? Like something that's sorted, and that is, you can either prompt it like, "Hey, I didn't want. Can you please arrange or sort the values by income group, or sort the results by income group?" Right now, it's sorted by income group first.

00:55:29 Daniel Chen
So that's why when we run it, it ends up being high, low, middle, and we can say, "Oh, we want it the other way. Maybe you care about low." What happened? Was that always the case? Uh oh. Oh, that was no, no, no. Oh, that was always the case. Was that always the case? Am I am I like making stuff up?

00:56:09 Speaker 1
Okay,

00:56:10 Daniel Chen
That is, I think. Why is it doing that? We are going to ask this. Why is the data not arranged by income group? I wonder if has to do with factors. Oh no. Okay, I think I know why. It's a. It's it's by like um.

00:56:38 Daniel Chen
It's doing it by alphabetical order. I believe that is why it's doing. Okay, so what is it saying? Yeah, so it's grouping this by alphabetical order. So that's that's what's happening there. So even though it's doing it that way, I ask the question. It's grouping it by alphabetical order. There is a way to get it properly, so you could have the follow-up. Oh, I don't actually want to group by alphabetical. These actually have different categorical values. In they follow a particular order, so there is this idea of this is a categorical variable that has an order. It's called an ordinal variable.

00:57:32 Daniel Chen
And so you might start prompting the LLM to say, "Hey, can we actually process income group as an order that goes from low, middle, high?" And so it can sort that way. You can try that out on your own. But this is if you sort of was following the way I was thinking as I was typing this. I think I hopefully I had said before the answer came out around like, "Oh, it's sorting it by alphabetical." These are things that again. That I think of, and you should start thinking of when you are getting presented, when you're working with data, right? So, using these tools right now, essentially, like even in the job market, your barrier for getting work done is so much higher now because essentially the code is not necessarily the big bottleneck anymore. It is how you are thinking through the problem, and hopefully, you are picking up or learning enough of these like data.

00:58:29 Daniel Chen
Terminologies or ways to think about data that can help guide the tool on towards that particular answer. Another, and just for this particular example, maybe I don't care about the income group as the primary sorting variable. Maybe you actually want it like by gender first. Where you're looking at each gender and then looking at low, medium, high, right? So clearly, I still have this problem with the income group here. But again, how you, what is your main goal? Are you trying to just look within the gender, or are you trying to look within the income group? That's a question that you are going to have to come up with because that is something that you are working towards, right? So there's no right answer, and this applies to the actual group project as well, which is why it's very open-ended because it.

00:59:27 Daniel Chen
The code doesn't matter anymore. Like normally, a class like this, most of the time, we end up making the actual research question really, really simple because the coding part is so difficult to get it all right and working that the actual report that comes out at the end is like a very simple version of what you can actually do with these tools, especially with agent coding harnesses. Now, well. Your thought process is actually more important now. So we've like down, we sort of just flipped it around, where the code is actually a little bit easier to write because the LM is writing it for you, and you can always prompt it back and forth around. It's not working. This result's not looking right. And so now it really is addressing your sort of critical thinking around data. So one other thing that I have around here is.

01:00:24 Daniel Chen
Okay, we are counting how many groups there are in each. How many observations there are in each group, and one thing that I'll kind of notice right away is well, the full N Hains data was a hundred and five thousand values, and so if I kind of eyeball this group right here, and I look at the total N here. Maybe I sum it up myself. That's not going to add up to 105,000. So, what is another thing that, given this particular data set, I'm already dropping the missing values here? Maybe the question is, as a follow-up, can we count the number of missing in each group? Right. So, why is this going to be important? Well.

01:01:22 Daniel Chen
If we end up with a high proportion of missing values in any particular group, that's sort of a good question to to explore further in our particular dataset. Or maybe it becomes maybe not for this particular variable, but certain variables. Depending again, depending on how the data was collected or the actual question that you're answering or asking, you might end up with a bunch of missing values. And so that's going to be really important because if you have a column and ninety percent of that column is missing, you should go and figure out if you really need that column of values, or you do like a little sub-analysis around just those particular respondents that gave you an answer back. Those are all going to be different rationale research questions that you have, and again, that's going to all come down with this filtering step: Are you keeping the missing, or are you dropping the missing values? Right. So the code itself.

01:02:19 Daniel Chen
Is a little bit easier to deal with because you can say, "Oh, I want to keep those missing values," or give me a data frame of just rows that contain that set of missing. You can prompt the LLM to write you that code, and here you can say, "You can see it's taking our n Haynes, it's grouping by income and gender, and then summarizing the total. But then it's also doing it by there's some calculation happening with missing, so it's counting is dot na, so it's counting which ones are are missing, not dropping." Not using the exclamation mark for the non-missing values, and so we can get a nice little table around missingness, and you can see here. Okay, there's. There are groups that only have a gender assigned to it, but for some reason, one reason or another, doesn't have an income group. Right, so that's kind of interesting. Maybe that's because.

01:03:18 Daniel Chen
Looking at this dataset, we might have people who aren't working, and maybe those people who aren't working have a different type of income category. As in, well, it's not zero because the income of zero means you're making zero dollars versus no, you're not working, right? So, missing this could mean different things, and that's going to be up to you on figuring out how do I go and explore and figure out what is happening in this dataset, right? So. I would say probably in the past where coding was more of a forefront, we might have like skipped this portion entirely just because trying to get this code on its own is already like a feat if you have to type it all from scratch and getting it all working. But again, now it is literally you can see as a follow-up. Can we count the number of missing in each group, right? And it's it gave me some output. It.

01:04:11 Daniel Chen
Again, the nice thing about the actual coding harness or the agent is it is modifying the file directly based off of what I am typing, and you can see the prompt that I'm using right now is. Why did it do that? Yes, don't don't do that. The prompt that I'm using now, I'm trying to use as much of the data vocabulary as I can. To sort of aid and trying to get a better result, right? Could I write something like, "Why is there missing data?" I probably can. It's probably going to start making something up because why would the model actually know why something's missing unless it's documented in the actual repository?

01:05:19 Daniel Chen
So, the next thing we're going to talk about, this is in our chapter. Is here's a function that tries to do the same thing, but makes it a little bit more generic, so we can provide other variables and other grouping variables, and still get the same table back. So right now, like arrange, we know it's kind of like not working exactly as we expect because it's sorting by alphabetical, not by, not as the order that we expect it in. So that is probably something that's going to happen right after data load. There's some data like fundamental data cleaning that's going to happen, versus here's a calculation that's coming out of data. So in the textbook, I'm going to copy this.

01:06:12 Daniel Chen
Now I'm going to call this an R function, and we can go and read this particular code first, and then try to guess what is happening. The guessing part maybe is a little bit easier because we try to use this particular function. So right now, if I am trying to read this code, I'll give folks like a minute to look at it, and then you say in your head what is actually happening. There's a couple of symbols in here that we probably haven't seen before, and so you can try to take a guess as to is this code going to work properly? Yes or no.

01:07:53 Daniel Chen
All Right. So let's run this particular code and see if what you think is happening is shows up. Right. So if we go and run it, we get the same six rows back.

01:08:12 Daniel Chen
We get a column called income group, gender, n, mean value, sd value, and it looks really similar to the code that we just ran before. There's a couple of differences, and maybe there's some code that we can write that can check those differences. But there's this looks like the same set of results that we just did, and if we look at the actual code. A big chunk of it is exactly the same as the code that we just looked at. So functions, we talked about this in a previous class, is a way to reuse blocks of code that we might want reuse blocks of code, but we might want to change the inputs for. So as you're going through a data.

01:09:06 Daniel Chen
Like processing or exploratory phase, you might write this code that we just had before. Sorry, this this code right here. You might write this code, and be like, okay, that's great, but this is grouping by these two variables and looking at, and all the calculations are based off of BMI. What happens if I care about some other set of variables and looking at calculations based off of another continuous variable? You could yes, in theory, copy and paste this code and then change the values yourself. You can probably prompt the LLM to do that yourself as well. But then you end up with a lot of repeated code, and hopefully the model will pick that up. But you, as the person guiding the actual code, you should realize that whenever you start copying pasting code, if you're pasting it more than essentially like more than two times.

01:10:03 Daniel Chen
You should start thinking about how do you turn that code that you just pasted into a function, and so right here we're still filtering, based off of is NA, but you can see here we're looking at a particular value. We're looking at group one and group two. So we sort of made the inputs for that calculation a little bit more generic. So instead of just saying n Haynes, it's now called data instead of. BMI. We'll say this the value we care about, and instead of income group and gender, we are calling them group one and group two as placeholders. Everything else is pretty much the same, except now we have this new bit of code here that you haven't really seen yet, which is curly two curly brackets. the The way that the R folks pronounce it is curly is how they pronounce it. So you see curly value, and all this doing.

01:10:59 Daniel Chen
Is this is saying, hey, you're going to pass in something for this variable called value, but the data set itself—that's not the actual variable name, right? So we actually want to give it BMI, but the function still—we don't want to hard code or type in permanently BMI. That kind of defeats the purpose of having a function where we can change the inputs. And so we're using placeholders or other variables, or parameters in this particular function that we can use throughout the body for the calculation. The curly is essentially saying, "No, you're not looking for this column called value. You're looking for the column that I'm giving you called BMI." So it's doing the, the swapping for you. That's what's happening here for the most part. When you see, the curly.

01:11:57 Daniel Chen
Just realize that it's whatever is being specified here is going to be a variable that the function got passed into. That's all you need to get out of it. You don't need to know more about how curly curly works and why it works and all of that. If you've coded in other programming languages before, this the part that gets. I would say, like as far as coding languages go, this the most bizarre thing that ends up happening for coding languages. But it's actually a really nice feature. Out of R that a lot of languages don't have. Okay, so this is instead of writing all of this code multiple times. Do I have another variable? I don't think I have another variable off top my head. We can look at names of.

01:12:55 Daniel Chen
So here are all of the variables that we have. So what this allows us to do is instead of just looking at BMI, income group, and gender, maybe I am looking at still grouping by income group and gender, but now I'm looking at like weight, and I can do the same type of calculation, but now it's based off of weight instead of BMI, right? Maybe that's something I care more about. The actual weight value, not the actual BMI value, because maybe all of a sudden we're working in a population that's just athletes, and their BMIs are going to all be really high. So now we're just going to look at their actual weight instead, right? So that's not the case in this particular particular data set, but that might be a rationale for why you're looking at like weight instead of BMI, because BMI is a combination of weight and height, and maybe.

01:13:53 Daniel Chen
BMI doesn't make sense anymore for some reason or another. Okay, so just to prove to you about what's happening, you might or the model ends up might end up writing a lot of code that starts to check things. So that's also your responsibility now. Where just like before, I ask this question: Hey, can we, as a follow-up, count the number of missing values in each group? That is a follow-up that I'm making because I am curious about that next step. You might go and do something along the lines of: Hey, I just wrote this code. I also had you convert that code into a function. Can you run those two commands and tell me that I get the same value back? Right. So.

01:14:47 Daniel Chen
This is why it's nice to work through analysis in smaller pieces, or almost one code chunk at a time, because you're not really having the model just write 500 lines of code for you in one giant go. That ends up being extremely difficult to follow the thinking, check the work itself. When I work on data science projects, like again, I'm guiding the thinking and the next step for the most part. Maybe I hint at it like. What's a good next step to think about? That's something that's totally valid, but you should be directing the actual exploratory part or the actual analysis, right? You don't want the model to just start doing everything from scratch on its own because it might just start interpreting things the wrong way, and then the code starts to not make any sense. Like, why did you end up, like for example, a very common question could be, why did you end up working with weight? This is like national data, like.

01:15:45 Daniel Chen
You should just be. It should be standardized based off of BMI because that's a little bit more, as a whole, for this particular population. Maybe that's the more that's the better metric. You should be able to defend all of those particular decisions, which is much easier when pieces when the analysis is coming to you in smaller pieces. So there's always ways to check your work, and that. That's again going to be a really important feature of having the LLM help you write this particular code, right? Maybe you just loaded a dataset, and your next question is, "I don't expect any missing values in here. Can you write the code to check that for me, or can you start tabulating missing values because that shouldn't exist?" Sometimes that happens, even when I'm working putting together the Canvas Gradescope. I'm going to download a bunch of grades.

01:16:41 Daniel Chen
And then after I pick the columns that I'm looking at, like I don't, I shouldn't expect any missing values. If you've submitted a homework assignment or something, so that's going to be a check that I actually make. So you might have the same response. Look for the missing values and or write those particular checks to make sure that the data is doing what you expect. Again, the code itself is much easier to write now. Because as long as you can think about what you want to do, you'll probably get some code that can that will be working. And then it's up to you to sort of say, "Oh, I've never seen this function before. How does that work?" And try to understand what's going on in that way instead of trying to learn how to write the function from scratch. So if we run this, I think I might actually have to run it one piece at a time.

01:17:44 Speaker 1
I have to run it one piece at a time. Our function summary. Just gonna rerun everything.

01:18:20 Speaker 1
Why is that false? That's weird. That's not good. All right. What is happening? Did I do something?

01:18:45 Daniel Chen
Did I change this? I did not change this. I think I did this.

01:18:50 Speaker 1
Yep, I changed that.

01:19:02 Daniel Chen
Yeah, there we go. Okay, cool. So you can see I was running a bunch of confirmation code to make sure that the results from the previous manual pipeline was matching the function pipeline. And I was getting a bunch of false values that was saying like, hey, those numbers didn't match. That's my check around. Well, this is supposed to match, and then I totally forgot that I swapped the actual grouping variables. So it was expecting it grouped by income group and then gender, but I forgot to change it back. Where it was looking at all gender first and then the income group. And so again, that's a really good way to just to make sure that.

01:19:46 Daniel Chen
Hey, these that function that I just made should give me the same answer back from the manual pipeline that I first thought through, right? And so again, these checks end up being really important because even now, like you saw, I made a change that I totally forgot about, and that's that's totally valid. You might, as your exploratory phase, start making modifications to your own code. And then all of a sudden, you have this code down there later on that is supposed to be a function or some other calculation based off of an earlier dataset. But because you're running things out of order, or you've made modifications that you forgot about, checks are like essentially not passing, or it's getting a false value when it should have been true. And that's again, that's going to be up to you to.

01:20:36 Daniel Chen
To go and figure out like what is happening, why? Maybe I could have prompted the LLM why why is this about why is returning false when it when it's supposed to return true? I believe that it would give me the answer like hey your grouping variable is a little bit different, and so that's an example like actually an example of why writing checking code is really important. Again. You want to make sure that what your assumption is happening with the data is actually being checked, especially since now you're not writing the code anymore. So the sort of only safeguard you have now is, if I'm not writing the code, then I need to make sure that the code can tell me, the the code can tell me that what I'm thinking is actually correct, or like I am getting the actual result. Like go write the same calculation in a different way, and I should get a similar result.

01:21:30 Daniel Chen
In this particular example, one of the calculations is is returning is not returning the same, and that's because if we look at these two values, the R summary because this was something that we did manually, we gave the column names mean BMI and SD BMI, but the function itself doesn't have the actual variable coded in anymore, right? So. Again, multiple ways to check something. You don't always use all equal. Sometimes all equal is going to fail, and so now we're going to say, "Oh, I don't actually mean every single component of the data frame. I only care about this particular column. Do those numbers in that particular column line up?" Right, and that's how we found out, or I discovered that. Oh, yeah, I switched the grouping variables because the order of the numbers are not the same anymore. Right. So again, even things like checking.

01:22:27 Daniel Chen
Data. There are multiple ways to check it. Again, ask the question on. I expect these two things to be the same. Can you write the code that confirms that? And then you might end up in a situation where oh, it's still coming out false, but you can give it some of this. You can give it the error message, and it says, well, the names. There are two string mismatches. Which is saying, like the name, the column names. Two of the column names don't share the same value, right? And maybe that's a hint towards you or the model. Like, hey, there's something different going on there.

01:23:27 Speaker 1
Summarize, mean, SD. Yep.

01:23:28 Daniel Chen
Okay. So take a minute, and what you should have, if you're following through the textbook, it's in chapter five in the R deepening and parity check. If you go to the R function, you can copy this actual function right here. But what I want you to do for the next minute is take this function and like what I just did. Look at the column names and modify the actual function call. You don't have to modify the actual function itself; just modify this particular calculation. So take a minute to work on that.

01:25:00 Daniel Chen
So one of the homework assignments that you're going to be, one part of the homework assignment that you'll be asked to do is, is that which is, hey, you have this function. Go and make another modification to calling that particular code. So here's an example where we're still using the N Haines dataset. So we're saying the way this function is working is first give it a dataset. Then give it the variable you want those summary statistics for, and then here is the two grouping variables that we want to look at, and here is the results from that. So here we're looking at education and gender. So we have breakdowns by education and gender, and then we have I forgot what this I forgot what that variable meant.

01:25:58 Daniel Chen
I don't think I took a note for that. Whoops! Yeah, I forgot what this variable meant, and I didn't write it down. So we're going to just say whatever this variable is. We have the count, the mean, and the standard deviation for this function. Actually, again, one of the nice things about this particular function is since we know the way to call it is here's a, Pass in a data frame. So in tidyverse, there's a dataset called diamonds. We can say, "Hey, I care about the price of is is price the I think yeah. I care about price, but break it down by carat and cut. Right. So here's a data frame that ends up doing something. Carat is a continuous variable.

01:26:55 Daniel Chen
Let's do cut and color, color, right. So here's a a big list. So there are 35 rows, where for each cut, color of color ranking for a diamond and cut of a diamond, we have the count, the mean value, and the standard deviation of that particular price, right. So that's a function that we made. We made it for NHANES, but we could use it for any other, Dataset that we might have, right? So here's an example of a dataset that comes built in to tidyverse. Just by loading, loading tidyverse, we have access to this particular dataset. And maybe when you're going through your actual research question, you might have two datasets that you might want to combine in some way. You might want to go and look at summary statistics across two different datasets. So it's not just confound.

01:27:53 Daniel Chen
Confound, yeah, confound to that one particular dataset that you're working with. Sometimes the functions you write really are just for this one data frame, and that's okay. But the way that this particular function works is it's pretty generic. We're given a data set, given a some continuous variable that you care about, and in this particular case, it really only makes sense for things that you can count. So n, like, is a countable number of rows. Something that makes sense to take the mean and standard deviation of. So if I gave this a, if I had given this, for example, I don't think there's another like clarity. Clarity is a not a number, so I would expect something really wonky to come out of this particular function, which it does. It clearly is like yelling at me about like doesn't know how to round clarity, right? So.

01:28:52 Daniel Chen
As long as we give it a dataset, a continuous variable, and two categorical variables, it is able to go and create that summary statistic for us. And then next week we'll look at like plotting, and this is something you can plot with. But this is reusing something that we built. All right, cool.

01:29:14 Speaker 1
We'll take another break. Wow, so few of you today. I know. Thanksgiving. Yeah, I know. I'm. Hopefully, you guys are more energized than me. I just got back from a flight at two a. m. this morning. I had to go to my eight a. m. class. I'm a little bit out of it. Sorry if my energy is a little low. But we'll just do a quick. All right.

01:29:45 Daniel Chen
Okay. So. That's bits and pieces around thinking through a sort of data problem that we might have with R, using the model or the the agent here to guide the code that we're writing. Hopefully, right now, if I show you some code that looks like this, you can make sense of it, or at least start to predict what is happening in that sense. And that's all happening in R.

01:30:18 Daniel Chen
So we're going to do a small little pivot. We're going to switch to Python as a programming language, and we're essentially going to go through the same process: load the data and see what see what this calculation looks like in the Python world. And you'll hopefully get a sense of you don't actually need to know every single part of the language, as long as you know the general steps that you're trying to look for. The code itself kind of will make sense on visual inspection, and then it's going to rely on you checking to make sure that the values are coming out the same, right? So now that we have the correct answer from the R world, if were to do this in Python, or if were to try to do this not in tidyverse, we should get the same numbers back, and so.

01:31:12 Daniel Chen
That is one way where you, if you are trying to learn another programming language or learn features of a language, and you already have a solution or an answer or an explanation around the first way of doing it, then when you go and learn something new, you'll have a pretty good reference for what's happening. Okay, so how do we get this all working on the Python side? So what we're going to do is we're going to open up the little folder for your submission. That's what you are going to be. Submitting for class for your homework assignment, we're going to right click it and we're going to go to New File. Actually, that's not the easiest way. Yeah, I don't know why you don't get the same. That's weird. One of the easier ways is to go to File, New File, and then here you actually can select Jupyter Notebook. So we're going to create a Jupyter Notebook version for.

01:32:11 Daniel Chen
Python and Quarto can also work with Python, but I believe, yeah, we're we're using notebooks since a lot of the Python data science community actually does work in notebooks, and so we are going to look at a slightly different format, but it'll it'll be really similar to how things work. So here's Python. You can see here the Right now, visually, it looks a little bit different. Right here, you can see that whatever we type right now, this is going to be written as Python code, and so this kind of differs a little bit from. So, if I do this side by side, it differs a little bit from Markdown code, where you can see Markdown is side by side. Markdown is.

01:33:13 Daniel Chen
Markdown is we have regular code to sort of regular prose that talks about in normal English what we're doing, but we can also have these little code cells that are in backticks. In a notebook, you don't have that little feature. Python code or that code cell ends up being displayed in the bottom right corner. So this is an example of a Python code cell. We can turn it into a Markdown code cell. We can turn Markdown code cell into Python, and now when we start to run things, if things are all set up, it can go and run that particular coding language. So just like before, we can say something like "setup," and if it's a Markdown cell, when it renders, it'll sort of render in real time something a little bit prettier. You can double-click it, and you'll get the.

01:34:12 Daniel Chen
The editable version back. In Python, well, here just like in R, we can start writing Python code directly. So one of the things that we can do is, in R, you know how we said library tidyverse to load up the tidyverse package. In Python, we say import, and we can import the pandas library. And here you can either click the little play button, or you can hit Shift Enter, and it will go and try to run that particular code. The one thing about Python in notebooks is when I try to run this for the very first time, it's going to ask me for what is the kernel, or like where is the Python that's installed that you want me to run this code. The reason why this is showing up is because.

01:35:07 Daniel Chen
Is because right here in the top right-hand corner, it says select. It doesn't know which version or where the Python is installed that it's looking for, and that's because on any given computer, there's multiple ways you can have Python installed. Python can exist in multiple different places, and so it needs to be really sure around what is where is the Python that you're trying to run. So you can click the select kernel and select it. Or it sort of forces you to pick if it's the very first time you are trying to run that particular piece of code. So here I'm typing import pandas. It's going to connect to whatever this kernel is here. This code space that we have set up for you already has pandas installed. We're running three dot eleven dot seventeen, and you can see loading up tidyverse or loading up pandas took five seconds. If we tried to run this a second time.

01:36:04 Daniel Chen
It'll be much faster because it's already been loaded, and so that's what that's that initial load. So we can actually go and load NHANES the same way, and so it looks really similar to our code. So we can say NHANES is equal to pandas dot read underscore csv. And then we can paste in, oops, that particular data frame, and we can print it out just like before, right? So this code, if I were to give it to you, should make a lot of sense because we've already seen it from the R side, right? So if I kind of do this side by side comparison, this is what. Right here is the import statement, so that's importing pandas. Down here is reading the CSV.

01:37:03 Daniel Chen
And it's pretty much the same function name. In Python, we have to tell it. We always have to tell each function that we call where we're getting it from. So in in R, we can get away with hey load up tidyverse. Within tidyverse, it already has read CSV. In R, we can get away with that. If we want to write R the same way that we want that we write Python code, then it would look something like like that.

01:37:33 Daniel Chen
Let me just make sure that actually runs. Yeah, that doesn't run. It's this. Yeah. Okay. So in R, if we wanted to always be really explicit where this particular function is coming from, we have to use this double colon notation. That's Python and almost every other programming language. That's the default behavior. When you are loading a library, you always have to specify the library for the function that you're using. In Python, you can—you'll see this code being written slightly different. So, import pandas as pd. And I'll copy this code that we have. When you import something this way, instead of writing pandas.

01:38:28 Daniel Chen
This as keyword right here allows us to give it a shortcut, so we can give it any type of variable or placeholder that we. Sorry, not not variable placeholder. We can give it any type of alias that we want, right? So if I really wanted to, I could have said import pandas as pizza, and this function would be called pizza dot csv, right? So you'll see this type of import really common in Python, and again, the reason why this exists is part of it is because because you have to specify where every single function comes from. Sometimes these package names gets pretty long. So imagine if you have to type tidyverse every single time you wanted to use a tidyverse function, it could get a bit tedious. And so Python, because that's already mandated for you.

01:39:25 Daniel Chen
It gives you the ability to sort of create a shortcut name or an alias for it. pd for pandas is the convention that we are using for this particular analysis. This yeah, pd is the convention for pandas. Okay, so let's say we. That's what the setup looks like. I'm going to go and create another file here, another notebook, and I won't save this. But let's use the actual model to say, can you import the Enhance data set in my Jupyter notebook using Python?

01:40:25 Daniel Chen
Right, and let's see if it is able to go and do that for us. Right now, it probably doesn't know. Maybe it does know. So, what is it? It is doing a whole bunch of stuff. So, it detected the fact that I have untitled2.ipynb, and it's writing this code in this particular way. The notebooks directory is already in its own folder. Etc. Etc. And so I believe I couldn't edit unsaved empty notebook. So just gonna follow me and paste this into the first cell. Okay. So it's telling me to manually paste this, so I will go and manually paste this in there. And because this is a new notebook, you can see it's asking me to pick the version of Python.

01:41:24 Daniel Chen
And it's going to take a couple seconds to load this, and then also end up loading this. And you can see that it's giving us essentially the same way of that we kind of wrote before. If you had started this off from the very beginning, I think it would have given you, or depending on how you're reading, giving prompting it, it. May have given you this particular code, and it's because yes, by default, a lot of notebooks think that the working directory is where the file is, but because of how we have this project set up, that's not true. the The starting point is the root of the repository. So you might end up seeing, and you can even see here.

01:42:24 Daniel Chen
It's even hinting at, hey, if this not working, try this other way, because of how notebooks behave. And you can even see here, part of the answer is, oh, here's this new parameter we haven't seen before, and it's giving me this rationale of what it's doing. Part of the reason why that's happening, I believe, was. Will it tell me?

01:42:55 Daniel Chen
I believe in here. Let's see submission. Yeah. So in here, it create. I actually tried to run and see if the code that it's going to tell me to run. It actually created. Ah, you can see Python class test. ipynb. It clearly saw my other example from, from class, and so it's using the example that I had already written. If you already don't have that example because it's it doesn't exist on your computer. You might get a slightly different answer. So again, the agent is able to actually read the files on your actual computer, and use that as its context for suggesting code. So again, why you might get a slightly different answer? I went through like this code in class just to make sure Python does work, and it found my other test file that I didn't delete, and so.

01:43:51 Daniel Chen
It's using it read that in and said like, oh, okay, you already have code that does this, so I'm just going to copy paste the code that you got working before, right? So again, very different behavior from normal talking with ChatGPT. This is actually able to run code and read your files, and again, that also has a lot of security and privacy ramifications as well. Don't just start working at a hospital and then throw all of your stuff into an LLM. That way, you can also see this is really interesting because we're set to auto balance. It's swapping between different models, and so before where we were on OpenAI, Llama five point five, it's currently running on Sonnet five point five. For whatever reason, it thought that was the cheaper way of making this happen. So I'm not going to question that. The actual model itself.

01:44:50 Daniel Chen
I would say because we are in this mode where we're making small steps with our data, and we're checking our data as each step goes on. I'm not really concerned about the actual model that's happening, because I'm not having it sort of go through a full analysis on its own. One of the things we can prove to ourselves, just like in R. I've been running getwd in Python. It's not called getwd; it's called getcwd for current working directory. So this idea of a working directory that we talked about in the first day of class totally still applies to whatever that we're working with, right? So why does the working directory make sense, or why is it important? It's because that's how we specify the file that we're trying to load up.

01:45:54 Daniel Chen
Okay, so take a minute in your actual notebook file. If you can actually click the plus button, so it it has this notebook file loaded up, I want you to try to prompt it to say how many. Try to find how many how many rows and columns do we have in our NHANES dataset that we've loaded.

01:46:51 Daniel Chen
So let's see if it can actually go and prompt that. So in the next cell, can you calculate the number of the number of rows and columns of our names data set? Yeah. So. For some reason, I guess it's not able to write the the actual JSON file. I'm not surprised it's not able to write the JSON file for reasons that are the actual part of the actual notebook. But it is able to read the contents. It's just right now not writing to the actual file for one reason or another. My guess is it's not writing it directly because editing a ipynb file is a little bit scary.

01:47:44 Daniel Chen
That's my guess, and why is that? Can we? It's because under the hood, this is what the ipynb and B file looks like, and if you mess up like this little comma, the whole file crashes, right? It won't load at all. So I wouldn't be surprised if that's one of the reasons why it's can you copy and paste this instead of just manually editing it? Because if it forgets a comma somewhere, then like this whole file just doesn't even open at all. I believe there is typically a, yeah. So there is an insert at cursor. So you could click the button that moves the code into a particular cell. So that is something that you can do. So here's the code that it wrote. It's a little bit complicated, but under the hood, this if we look for the equal sign, so it's really the same thing as the less than dash that R gives us.

01:48:38 Daniel Chen
The main thing that's happening or making the calculation is is NHANES dot shape. So dot shape is the way that it is picking up number of rows and number of columns. Everything else is Python code. It's a little bit foreign. It's different from R. But if we talk through it, or if I explain it to you now. You slowly are learning Python. Dot shape gives you two numbers back in a tuple or a tuple, and in Python you can do this multiple assignment way of if something gives you two variables back, you can actually just say var like variable one, variable two equals those two, and it knows how to distribute it back to you. So we can say n rows, n columns is equal to this tuple, and then right now there's a print statement.

01:49:35 Daniel Chen
And all this doing is pretty printing the value, so that's why we get rows colon number comma columns colon number, and that's all that's happening there. The other thing is in Python, the way this string works, it's called a formatted string or an f-string. You do see this little curly bracket. It's very different from what the curly curly was in R. All this doing is You told me to print a string like hello, h a l l o, but sometimes you want me to print out a string that is like a Python variable. You want me to like insert a variable or a calculation. All this f string is doing is anything that's inside the curly or one set of curly braces is going to pull that value out of the Python world, and so that's why this part of the string looks like looks like that. So it's rose colon.

01:50:34 Daniel Chen
And rows, like how did it calculate or pull out that variable? It's pulling it out with that curly brace. That's the answer that it gave us. But nothing stops us from saying, "I have no idea what what that print statement is. Can you make it simpler?" Right? You can also say, "I don't know what that is. Can you make it simpler?" Here's the code that it is suggesting, and You can insert that and run that particular set of code. You can run it in separate cells, and it will go and calculate number of rows, number of columns for us. Right. So multiple ways of getting something done. Again, this is how it prompted and gave me that code.

01:51:33 Daniel Chen
It really is up to you at this point to like. Do you understand where what that part of the code is doing? That is your entry point in learning how the language works. Or you can again ask. I have no idea what that's doing. Can you find a different way? And it will give you a different way of calculating that. Right now, it uses len for length, and so length of a data frame. Well, is giving us number of rows, and length of the columns of the data frame is giving us how many columns there are.

01:52:03 Daniel Chen
So we can learn different parts of the language by prompting it, and then looking at the results. And now you kind of know that len is something that you can use if you're trying to find the length of something.

01:52:35 Speaker 1
Okay.

01:52:37 Daniel Chen
If we go back to R, we can calculate the mean of NHANES, and mean of the BMI. Why is it not that's not good? Yeah. Okay. We can get the actual BMI column from our NHANES dataset. And we can go and calculate the mean of it, and you can see we got an A back, right? And if we remember from two weeks ago, if we're trying to calculate some type of summary statistic and we get an A value back, that probably means one of two things: either everything is missing, which we can go and take a look at. Is that true? No, there are definitely values here. But the other reason why we would get that back is because somewhere in this.

01:53:32 Daniel Chen
This vector or this column, there's an NA value, so calculating the mean gives us NA back. So in R, the way we fix it, we can either prompt it and say, "Hey, can you calculate the mean but drop the missing?" That's one way we can get that working in R. But we can also do the same thing in Python. So we can have it calculate. Can you calculate the mean of the BMI variable?

01:54:10 Daniel Chen
So, again, the model itself is not very smart. It can generate code, and it can run code. And so here is an example of I asked it to: Can you go and calculate the mean variable in Python? And what it actually did was, from the very beginning, generate Python code, ran it on its own, got a value back. And then all that was saying, oh, here's the value of the mean of the BMI column, and also the other thing that the model learned was the code that it generated did not error, and if it errored, it would probably go into another loop and try to figure out why the model actually errored. But you can see here it made a call to Python on its own, which again could do dangerous things if you're not careful with the prompting.

01:55:02 Daniel Chen
It's importing pandas. It's rereading the data frame, and it's loading and it's calculating the mean, getting the value, and then it's saying, "Oh yeah, here's how you go and calculate it." So it actually went off, generated its own thing, ran it, and then told you, "Hey, you can do this yourself." Right. So under the hood, it already like calculated the answer, which is why the answer itself came back with the, "Oh yeah, you told me to calculate the mean. Here's the code for it." By the way, here's the actual answer for that particular calculation, and you can go and run it yourself. Run. Oh, it's in markdown mode. So you can go and run the Python code itself, and you can see I got 25.64 or 65 if I round it, and that matches up with the answer that the model is giving.

01:55:56 Daniel Chen
So the model isn't really hallucinating. This was a thing that happened in the past, or like two years ago, where you would ask it for the BMI and it would just say, just make up a number, like because it just made up a number. This is known as essentially a tool call, where it is able to execute other things on its own. It is executing Python code from its own command line, where the tool is the command line running Python, and it. Literally saw this number and created this text around that number to give back to you. Clearly, it knows that I'm also working on an R project with Python. How does it know that? Well, it's because somewhere up here, it somewhere up here. What did it do.

01:56:44 Speaker 1
Look at this one.

01:56:56 Daniel Chen
Okay, I can't find it, but somewhere up here, it was looking at all of the files in this particular folder, and so it actually has context, and it knows about the R code that we were just working with, and the files that we have in the folder that we're working in. One of the things about Python is you'll notice that it actually gave us a number, whereas R didn't, and so Python automatically drops missing values when you give it a vector of numbers. R doesn't. Those are just going to be quirks out of every single language, but we can go and compare them. So, Python gave us twenty five point six five. Do we get the same value from R? Na.rm equals true, and we get twenty five point six four eight, which is the same number that we got from Python, right? So.

01:57:54 Daniel Chen
These languages, they all have the same features. If you know what you're asking for, then you can confirm it. Knowing the details of the language doesn't really matter as much anymore, as long as you can think and say, "Hey, I want to make this particular calculation." Right. So, if we had asked, "How do you go and make a calculation of this particular variable?" You'll also notice that the notation is slightly different. In Python and R, but if you look at it, it shouldn't be too surprising in the sense that I asked for the mean BMI, so you should be able to see the words mean or some average, something that signifies that you're calculating the average, and then something that looks like BMI and something that gives you context of where it's getting BMI from. The fact that this is in a square bracket and a quotation, that's how Python works in terms of pulling out a particular variable.

01:58:50 Daniel Chen
In R, I did it with a dollar sign. In Python, you'll see that I did it with square bracket quote, right? So different ways of pulling things out. But again, we're not really concerned about that part of the the language anymore. We're now concerned with what is the next question that we want to ask from our data. All right. So we'll take we'll take a five minute break. Come back at ten past. And then, if you haven't already, get the Python version working on your particular homework assignment.

01:59:49 Daniel Chen
Part of it is like, in this particular class, you should have it in the document. This is what I prompted. Stuff like this in the real world, do I care that you prompted for this? Probably not. I would, I would just be more like, why are you prompting this? If like, if I was working with you for real, I was like, why are you prompting to do that? Like, if you were hired as a data scientist, you probably should know this. But in this particular class, yes.

02:00:19 Daniel Chen
We want you to save the prompts that you're using. That's why we have markdown able to type markdown. You can also do it as a code comment, but having the prompt there is it's useful for your for language learning as well.

02:00:33 Speaker 1
So we also have to. We also have to. Yeah, above.

02:00:41 Daniel Chen
Or below. Yeah, and and again, that's for us because I because we're not teaching you. Coding really from scratch, like this our way. Like, yes, this the prompt that you use because this how you're prompted. Because you'll you'll notice that sometimes the prompts that you type give you answers that you don't expect or is wrong or something, and so at least you're keeping track of it. That's what we care about. Like in this as a classroom exercise, that's what we care about. Again, in the real world, do I need you to track this? No.

02:01:16 Daniel Chen
I would probably be questioning why did I hire you if you if you did it that way. But again, in this class, we're we're mostly teaching you the prompting, less of the correction. So we want you to try the prompting.

02:01:48 Daniel Chen
The Directory is correct. It's if you the branch is correct. It's if you create a pull request, a merge request. So that that has nothing to do with this. That has to do.

02:01:59 Speaker 1
With GitHub. Oh, the GitHub. So I the GitHub said my name and then the working directory and that. Yes.

02:02:21 Speaker 1
Yeah, that's that's correct. But the branch—you didn't push the branch yet, and you don't have a pull request. Oh. So I need to push a branch. Is that the branch? I've created one. Oh, yeah. So then you have to create the pull request. The pull request. First.

02:04:42 Speaker 1
Okay,

02:04:43 Daniel Chen
Now let's take that last example that we did on the R side and see what it looks like on the Python side, right? So right now we have all of this code that took a data frame, filtered it, grouped by, summarized, and arranged it. We could, in very literally, take that code. And we can say in a new cell, can you translate this R code into Python? And I can paste that. It's. I don't think it's going to create a new cell, but it's definitely going to write bits of the code. You can see it is doing something that we just talked about, which was.

02:05:38 Daniel Chen
It tried to convert the code on its own. It generated that code, and then what it ended up doing is it ran it on its own, and then saw the results. But also, it saw that it did not error, and then the thing that it did was give you back the actual code. And how does it know what the output is? It's because it literally went and ran it on its own, right? So again. Something that's really nice about coding agents, right? If I had done this straight in ChatGPT, let's see, Chat G, Chat, right? Let's let's see. If we did this in ChatGPT, and translate this R code into Python, I'll just leave it like that.

02:06:36 Daniel Chen
If I just wrote it that way, with the typo or not, that's what it ended up doing. So it's treating it line by line: filter, group by, summarize, and it's like, oh, okay, drop the missing values. That's supposed to be like filter because our filter was dropping values. Group by, summarize. There's rounding, and then there's sorting values. That's generally what ended up happening. But you'll see that down here, it didn't actually give us a table of the results, right? It just said, "Oh, you told me to translate some code." Okay, clearly, I don't have the ability. I don't even know what your dataset is. I'm just going to try to translate it one line at a time, and so this is the results that you got. And it again, it it shouldn't give us a summary of the actual data, but in our actual agent.

02:07:29 Daniel Chen
Well, it's giving us the actual table of results. Why? It's because it literally has access to the files on my computer and is able to give me a much better and complete and direct answer to what I have. One of the things that it did not do. So, again, this might be your luck of the draw, depending on how the model behaves. Ice asked it if it could translate this code from R into Python. It only wrote the Python code and tried to execute it, so it did the translating for us. What it did not do was also take the R code, run it as R code, and then see if those two tables were the same. It did not do that, right? So sometimes you might get that response where it might be able to say, "Hey, like the R code is exactly the same."

02:08:25 Daniel Chen
Sometimes you might get a response that says that here's just the Python code. So we can copy and paste. Copy this Python code. We can paste that there. We can go and run it. And one of the things I might want to do is does this result roughly look like what got printed out? So seven five one six eight six five seven. Yeah. So these two things look the same. So I can come back to my R code side and see if I run this cell, do I end up with the same sets of results, right? And so here's the results from R. Here's the results from Python. They do look the same. R sort of drops this trailing zero. That's okay. That that kind of makes sense. And those values do end up coming back exactly the same. So we can now. We've seen that the results are the same. We can go and.

02:09:23 Daniel Chen
Go through the code that it has given us. All right. So one of the nice things about what this particular model did was it gave us the R code as a reference, as a comment to the side. So you can see it took this summary variable. You can see it kind of looks like a like a tidyverse pipe. By wrapping everything around round parentheses, has our data frame. You can see we did group by drop na group by aggregate, so that's essentially the same as group by summarize. There's some rounding. The reset index is really specific to Python. It all it does is it makes it so it looks like a normal flat data frame. We're not going to talk about multi indices in Python, but that's why it's there. You can ask.

02:10:17 Daniel Chen
The question why it needs to be there, but it's good that it's doing that. This isn't exactly true, so you can even see like I know a little bit about how pandas works. The fact that this says dot groups equals drop, that's not exactly true. Why that exists in the Python world, but it's good enough for this scenario for it trying to convert itself. So I'm reading the code in a really similar way. Some of the functions are different. So this is running drop na. This isn't running actually filter. So there is a separate way where we can filter our Python code, right? So I can even say instead of drop na, do it do it as a filter step. Maybe that's what I want, just so I can actually have one to one parity.

02:11:13 Daniel Chen
With the Python code and R code, and so again, it's going to go through the same loop. It's going to try to run it itself, and right now, it's running .query, so it's saying BMI not NA, income group not NA, and that's going to be its equivalent of filter. And so again, maybe you're wondering why is it using drop NA instead of filtering? Maybe you want to filter on more things later on, not just dropping by missing, and so you can prompt and get a slightly different answer. From what it's doing, but I think it did a pretty good job because we were trying, we were using filter in the R world to drop missing values for those columns. It was able to determine that's the spirit of what you were trying to do, and so it found a different way to write that particular piece of code. And I think that's okay. Group by, so really the same thing with group by in R and a lot of data processing libraries.

02:12:10 Daniel Chen
We're still running group by. We're passing in variables that we want to group by. So in R, we don't necessarily have the square bracket, or we didn't have to call it as a list. In Python, we do. So the square bracket in Python and a lot of programming languages is how they create lists. As far as you're concerned, treat that as the same way. R uses the c function. To create a list of items, that's not exactly a hundred percent true, but it's close enough proxy, close enough for what's happening here. So we're creating a list because there's multiple things we want to group by. In R, group by doesn't have the c function. You can just commas separate them. So again, those are the re those are little details where if this was a coding class, you would get stuck writing code just to get that to work. In this particular class.

02:13:04 Daniel Chen
We're getting the code to work through the agent, but you can run the code yourself and inspect the code and read through the code, and hopefully the code does make sense. Or now that you have R code as a reference, you should be seeing the the same set of steps that are happening. So we have group by. It's no longer called summarized. It's called aggregate or agg. It's also called aggregate. Ag is just the shorthand that they've aliased as well for this particular method. But we have the same thing. N, mean BMI, SD BMI. We're rounding and then we're sorting or arranging. So instead of arrange as the function, it's called sort values, and we get the same high, low, middle because by right now it is sorting by alphabetical order. So we haven't really dealt with that problem yet.

02:14:02 Daniel Chen
Again, you could. I think in your homework assignment, we say like, "Hey, please make a modification to the code." You can prompt it to say, "Hey, this sorting alphabetically. I want it to sort it as an ordinal variable, where this this, where low is one, medium is two, and middle is two, and high is three, or something like that." You can prompt it that way, and it will generate some of the data cleaning code to get that to work.

02:15:01 Daniel Chen
Okay, the next thing that we have scheduled for this week's homework assignment is there is the ability to we have it set up where there is a helper script just to help with some calculations that we have in the.

02:15:30 Daniel Chen
Working with Python. So, one of the exercises that we have you go through is here's a function that we have in Python. We could define this function directly in the notebook file if we want, but in Python we can also save it to a separate file. In R, that function that we wrote, you can also save it to a separate file. In R, you'll use this function called source to read that particular file. It'll run it from top to bottom, and then you have access to that particular function. In Python, you would save this to another Python file, and then you can import this function yourself. And so, we'll show you how this works on the Python side. So, on the Python side, you'll get something that says in the instructions that you have for the homework assignment to create a file called helper.py.

02:16:25 Daniel Chen
They'll save that particular file, and this is really similar to our earlier weeks, where we have all of this checking code around does this particular file exist or not, right? So we have a function called load and preview. So in R, it's slightly different, right? It was the name of the function, and then gets the assignment operator, and then the word function, and then the parameters that you want to put in it. In Python, you don't need that. We say def for define a function, and here's the function name itself, right? So if I were to write this in R, it would look something like load and preview gets function path and rows equals five, right? So that's what the R function would look like.

02:17:21 Daniel Chen
But in Python, this is how Python defines functions. The one of the things about Python is the indentation really matters in this particular case. So you have to indent. It's the the official guidelines say four spaces. So you'll you'll hear me say four spaces very often. But everything within this four space indent, you can see like all of that code is shifted four spaces. That is part of this function definition. So if any one of these was Sort of like outside, like that. You can see, like now, it's throwing all sorts of errors because it thinks the function ended here, and this doesn't make sense from a Python perspective right now because CSV path isn't even defined. And then underneath, you have an indentation where it doesn't make sense to have an indentation. So you'll see a bunch of error messages or squiggles.

02:18:18 Daniel Chen
On the Python side, when your indentation is wrong. But everything here is a Python is part of what gets run. We can see we're getting the path that we're passing in, and then we're doing something about does this path exist? If not, it's going to return an error message. You'll see an error message that says "file not found" error. That's really nice because R doesn't really have a nice way to. Raise error messages. You have to sort of do some trickery around that, and then the rest of it is, hey, we're going to read this data set, and we're going to print out the number of rows and columns, and then we're going to return or what comes back is the first n rows of that particular data set. So this says load and preview. So we're only getting the preview of the data set, and the preview is only the first couple of rows by default. It's five, but we're getting all of the columns. Is what's happening here.

02:19:16 Daniel Chen
So, if you're confused about what's happening, we can say what is happening in this Python function, and you can see it's going to give us a line by line breakdown. It loads a CSV file, prints how big it is, and gives back the first few rows line by line, and then you can see the model actually talking us through. Section by section, what is happening in each line of the code, right? So you can use these LLM tools like normal ChatGPT if you want, but you can also have it modify and read the actual files that you have on your particular in the coding environment that you're working with. So.

02:20:14 Daniel Chen
Let's go back to our Python code. Typically, when you're importing things, you'll put it at the very top. So we can say import helper. I believe this will work. I'm hoping this will work. Yeah, it's helpers. What did I say? Oh, hold on.

02:20:44 Daniel Chen
Bomb helper. Does this work.

02:20:46 Speaker 1
Oh no! All right.

02:21:01 Daniel Chen
I think I know what the problem is. Um. I think we tell you not to do this, but I. I know this is how. Whatever is happening on my computer, this is the way it's. Being read, yeah. So in our homework assignment, we actually tell you to put it in the assignments folder, the submission folder. I don't know why I have to in this particular reason have to put it out here. That's it has to do with again everything always has to do with working directories and paths. So I don't have a good idea, a good reason why.

02:21:44 Daniel Chen
It's working this way and not the other way. Other than I'm going to leave that problem alone for now. Yeah, we can probably even prompt the LLM for getting it all to work, but. Yeah, I think the the way this notebook is all loaded and the environment is all loaded right now. It thinks everything is in the root of the working directory. So we're going to modify our code such that everything works from the root of the working directory, which mean which meant that I'm going to import helper. Right now, helper is at the root of the repository, which meant that if I want to call this function using this particular data set.

02:22:35 Daniel Chen
I am calling that particular dataset from the root of the repository, and here we have this custom function that we just created. We are, whoops,

02:22:50 Speaker 1
From helper import this.

02:22:58 Daniel Chen
There we go. We have that function that we just created ourselves, so that's a custom function. And we can go and use it right away by importing it and using that function that we imported. And here we get the number of rows and columns, and then the first five rows of that particular data set. Right? Why do we get those particular results? It's because we are loading our data set. We're get we're literally printing out that particular shape, or the shape of that data frame.

02:23:34 Daniel Chen
And then we're only returning the head or the first whatever number of rows that are happening in this particular dataset. In the example that we have, we're also getting this D type warning, right? This this warning that's happening right here. We didn't have this before. Why didn't we have it before? It's because before we had this low memory equals false parameter in there. So if you wanted to change that behavior to what we originally had, you can modify the function, restart. All you would have to like click restart and then rerun all of your code. What happens in Python if something's already been loaded as an import when you try to run that cell again? It won't actually reimport it. So that's one of the quirks with the programming language. So if you want to reimport something, the easiest way, as far as this class is concerned, is click on restart and then that essentially turns everything off, turns it back on, and then you can run and it will cleanly reimport your updates.

02:24:33 Daniel Chen
That way. Okay, last exercise that we have is back to this particular example that we had from the R side, which was this particular function. We can say something like. In our helper. Py file, can you define, the R translation for. This code.

02:25:31 Daniel Chen
So. What was it doing? We it took in the R code that we prompted. Maybe we could have even said, "Hey, look in here for that particular function and translate it." I was trying to be a little bit helpful and just pasted exactly what I was looking for. I told it the file that I wanted to put it in, so now it's it's in here and not some new file that it created. And then this. Person calls me a fifth time. I think I'm gonna have, I'm gonna be very curious why someone is calling me. What did I do? I gave it the file for it to put those values in. One of the other things, again, you would have noticed is here are some of the things that it was thinking about. But again, it did the same thing where.

02:26:30 Daniel Chen
It ran. It generated its own Python code, got its own results back, saw that it was, it did an error, and here it wrote back to the actual file, which was something different. It didn't do that for the notebook. I don't know why it didn't do that for the notebook, but that's okay. But it was able to directly modify this particular notebook file. And so it's also saying, hey, I added this to helper.py, assuming translation meant meant into Python. It tested it on the Enhance data. So even right here, it's saying, I actually ran this on the Enhance data, and this is why data privacy is something you want to be very mindful of. Because nowhere did I say go and test it on my original data frame. It just went and did it, right? So where you are running these coding environments is really important.

02:27:25 Daniel Chen
Because it will go and do these things. Sometimes it will ask you before it does it. In this particular case, it just went and did it. And again, things you want to be mindful of. Here's the code. It gave it to us as a copy paste format, but it also rewrote that file directly. And then right here, it's even saying, "Hey, you can even import this directly, so we can even run this code here and see if it works."

02:27:56 Daniel Chen
So right now it's you know it's using query for not na I think that's okay. It's still doing group by. It's still doing agg. It's rounding, resetting index, sorting those values. It's keeping the rough function signature like the the way that the r function was using those placeholder variables. It's doing the same thing right here, and so we can go back to our Python code here.

02:28:27 Daniel Chen
And I can paste this, and hopefully this runs. Of course, it didn't run. It's help, helper, helpers. What did I call this thing? Oh, I know why. Let's restart all of this. Let's run. So I restarted. Everything, so everything turned off. I'm going to rerun this first cell, so we have our dataset, and then I'm going to rerun this, since this is the only thing that matters. We could rerun everything, but in this particular example, I'm just showing you we have this helper file. We're importing this particular function, and we can go and use it right away.

02:29:22 Daniel Chen
Nothing stopped us from saying doing it exactly like the way we did it from R. We could have defined that function directly here and used it that way as well. That's something we could have also have done. But in Python, in the way that the course materials were set up, we were showing you this module way of doing it. That sort of is a good thing because it sets us up outside of not using Jupyter notebooks and stuff like that. But you can see, hey, we actually in today in this one lecture, this three-hour block, we kind of reviewed R from the last couple of weeks. But then we took what we learned from the R ecosystem and applied it to a brand new programming language. And now the programming language here, a lot of it is doing the same steps that we were asking for in R. Right. So again, your thought process is now the more important thing, if not the most important thing.

02:30:21 Daniel Chen
If you already know generally what you're looking for, then it's much easier to review this particular piece of code because you don't again you don't have to write the code to make it happen. You can query it. Sorry, not query it. You can ask the LLM, hey, what does this line mean? That's something that you can do. You can have the model spit out code and for you to run it yourself. Because you have R and Python in this particular repository now, as your as something you can use, then you also have your own checking mechanism for checking the results. Right. So that was pretty much the homework assignment that you are going to be working on for this week.

02:31:15 Daniel Chen
Putting everything in the submissions folder, there is a file called parody.qmd. You're going to load some stuff into R. You're going to make some changes to the functions that we write. You're going to create a new Python notebook called translation.ipynb. That helpers file is exactly the same file that we specified, and you're going to write the two tables that.

02:31:47 Daniel Chen
You're going to print out those two tables, write a comparison for it. One of the things that we have in the textbook is around like package management and things like that. Right here, we've already set everything else up for you, the environment and all the packages that you have installed. So we have you look at in this particular repository. There is a.

02:32:12 Daniel Chen
Where is it? Do you see it? Oh yeah, it's under dev container. There's requirements.txt, and you can see, hey, we we've been using pandas as the library, so that's what ended up getting installed. On the R side, this is something that we're going to update, or I'm going to update. I think it's in here.

02:32:46 Daniel Chen
On the R side, because of how we have created the environment, all of the tidyverse stuff is already set up. This isn't—we're not talking about R packaging and stuff in this particular class, but there are a series of steps that are involved with setting everything up and installing all the packages, which is why it takes like 10 minutes. For if you completely delete the code space and restart it, why does it take 10 minutes? It's because it's re-downloading this container. It's reinstalling the Python packages. It's doing a whole bunch of other stuff just to get everything loaded up. Not just in getting the R packages and Python packages installed. It's doing a bunch of other stuff as well, and so that's why it's taking ten minutes. But we also have you say take a look at this requirements file, because if you, for whatever reason, in the future, need to add another package, for example.

02:33:41 Daniel Chen
In this class, we're we're only really just looking at everything on the R side, but you might want to make figures and plots in Python, and so there's many different plotting libraries in Python, like Matplotlib or Seaborn or Plotnine or Altair. They're probably all the more common plotting libraries in Python. You would have to put that in here, such that those packages get installed. Right now, in this class, we've sort of like minimized what you need to work with. But again, nothing stops you from adding more things, more packages, and stuff like that. So we have you look at the requirements file. One of the other things around notebooks is how do you go and what is the best way to start version controlling notebooks? Where is my.

02:34:40 Daniel Chen
Where to go? Okay. Close all. Okay. One of the things that we ask you to do is clear out all of the bulky pieces of. Oh, where did that? Okay, it's here. Oh, no wonder why. Okay, my entitled was here, which is why all the working directories were were all scurvy. And here, it's supposed to be, in that folder. Okay.

02:35:13 Daniel Chen
One of the reasons why we ask you to clear out bulky output in a Jupyter notebook is this is actually what's under the hood of a Jupyter notebook. And if we kind of look in here, there is a cell type called code. There is some data frame. Something got printed. Actually, it might be easier if I show you what this looks like side by side.

02:35:42 Daniel Chen
So we have some code, and then some data frame got printed. What does this look like if we look at the default view? This is the data frame that got printed, but here's the code that got that generates that. And so you can see there's a lot of written stuff that's happening in this particular notebook, including like the execution count, which is every time you go and run this code, this counter just goes up, and it doesn't matter. It's not for that particular cell. It's the entire notebook, which means that you can run things out of order. The numbers are going to change, and so the best practice around working with notebooks is you go and click on Clear All Output, and then save this. And this is the file that you version control because that throws away all of the like little counters and output. And when you're collaborating with other people, especially around notebooks.

02:36:39 Daniel Chen
This is one of those steps that you want to make sure you do when you are version controlling that. It becomes a problem when multiple people are working on a Python notebook. They have different outputs, they have different counts, and things like that. It causes a whole bunch of issues with the version control system. So we we haven't really talked about conflicts, merge conflicts, and things like that. We don't want to talk about merge conflicts, especially around a Jupyter notebook, and so. This is one of the ways you guard yourself around having that problem later on. So clear all outputs. That ends up being the file that you end up version controlling, and then you're you're treat it like a normal file. You can see that when I do go and clear all the outputs, and look at here, you can see this part ends up much cleaner, right? Like all of the output is empty, and again, we are only version controlling the actual source code. We don't care about the output.

02:37:37 Daniel Chen
Why? Because we can always regenerate the output by rerunning the code. Right. Cool. So, if you haven't, if you have any questions.

02:37:49 Speaker 1
It says dependency note. md. Essentially, we're.

02:38:05 Daniel Chen
Forcing you, where does it say that? Yep. So, essentially, we're asking you to either prompt your way through it, but you have to describe what is being installed, right? Like we aren't. Again, you haven't done any of the installs that are involved here. So, if you do something and you want to add something, that's totally fine. But again, it's still your responsibility to know what's happening, and so here we're just saying. In the document that you're submitting, like in the QMD file, in the top or somewhere, write the packages that you have installed and what they do, because you should know what that is doing. Even if it's completely vibe coded and it's installing packages or adding packages, that's fine. You still have to know what is being added. Yeah. Cool. So, uh.

02:39:03 Daniel Chen
We have five minutes before next class comes in, and I'll be in front of the third floor elevator for office hours. But if you haven't gotten started or if you haven't been following along, try to get started on assignment four that I just went through. And if you have any issues with just getting stuff running or stuff like that, get parts of the R code. Just raise your hand, and we have five minutes in class right now to help you with that.

02:39:36 Daniel Chen
Give me one second.
