00:00:16 Speaker 1
Recording in progress. There we go.

00:01:48 Speaker 1
All right.

00:01:50 Daniel Chen
Cool. All right. All right. So today we're gonna take a little bit of a step back and talk about version control and. You've already been exposed to the version control system that we have been working with, which is Git. That is how you have been essentially saving your homework, and putting it on your GitHub repository, submitting it as a URL to us, and then that's how we're doing the grading. So that's that's Git, the version control system. We're going to spend a little bit more time on that this week, or in today's class.

00:02:37 Daniel Chen
And that plays a role because this week is this week. We're also setting up all of your groups for your group projects, so we'll spend a little bit of time later in class. If you already know if you already have friends or whatever in your class, in this particular class, you can self-form the groups in Canvas, and then what I will do is whoever's left will just get randomly assigned or really just get assigned to a group.

00:03:07 Daniel Chen
Um. And the those two assignments for the Git practice and also your very first like group project setup that's all due next week as well. The group setup is mostly very similar to the way you set up your homework assignment. The way you set up your homework assignment, we had asked you to like fork the repository and you have that as a code space. For the group, we're going to. There's a couple buttons that I'll show you that you have to click. You're not clicking the fork button anymore. You're clicking the use as project template. Only one of one person in the group needs to do that, and then you essentially add everyone else to the same project that way. So I'll show everyone how that all works when we get there. But that's essentially what's happening. That's essentially what's happening between.

00:04:04 Daniel Chen
This week and next week for your homework assignment. What else? All right. So a little bit about Git. This sort of the problem, or not? Not. This one of the problems, at least for most people, that we are why we use Git as a version control system. So anytime you end up working on a project, either by yourself or with other people. You always end up in the scenario of like, hey, this a thing I want you to I want to submit, and this like the final version of something. And I do this sometimes too, and I still sometimes do this when I'm not using Git. What you end up doing is you modify a homework assignment or you modify something, and then you start numbering it as a way to track the version of something. So as you progress, you you might say like, oh, this the the final version or the second version, et cetera.

00:05:03 Daniel Chen
And you always end up in like this mess of like how many finals and how many revisions, and it gets even worse when you have to pass it to another person and they have to edit, and you have to keep track of who made what edits when and where. And then again, the way that most people end up doing it, myself included, is you'll put your your name or an initial at the very end, and it's like this is your final 18 that I saw, and et cetera, et cetera. And then you have the same problem that just gets worse and worse as you. Try to collaborate on a document. Sometimes, if it's like a Word document, that is a little bit better because you probably end up doing something like just putting everything in a Google Doc, so you can do collaborative editing at some point. But before Google Docs was a thing, I don't know if there was a world that you know of before then. But before Google was a thing, that's essentially how we did it. And then you always end up in this other problem as well, where what happens if it's not just one file and it's.

00:06:02 Daniel Chen
Multiple files, and then you might end up passing around zipped files, and now you're naming zipped files with the same convention, and it just gets worse and worse. Git isn't the main reason why Git exists, but as a version control system, Git is a tool that tries to solve this particular type of problem. It gets used a lot in any code-related ecosystem because it was originally designed for sharing and working on common code bases, but nothing stops you from using the same system for non-code-related files. In this particular class, you have a QMD file, which is not just code. There is code in it, but it's not just pure code, and that's okay. You can version control QMD files.

00:06:59 Daniel Chen
That's what you've been doing in class. Your QMD files export out into either HTML files or PDF files, and you can you could in theory version control those as well, including images that your document is going to produce and stuff like that. All of those things are totally okay to version control. And then a little little bit later, we'll talk a little bit about like what things you might not want to version control. The other thing about Git and GitHub that is that you can use outside of this particular class is well, you all have your own GitHub accounts now because that was part of the homework. I don't think I have. This is this might this might end poorly if I'm trying to live do this.

00:07:56 Daniel Chen
I don't remember the last time I logged.

00:08:03 Speaker 1
In. We're not doing that. Hold on. Give me a second.

00:08:32 Daniel Chen
One of the things you can do

00:08:43 Speaker 1
Why is it here? That's weird.

00:09:04 Daniel Chen
Does This work? This is, I guess, as as close as this example might be. One of the things you could do is you can still have a Git repository for each of your UBC courses. You you would probably just specify it as private. And I think this is like a course that that from like twenty twenty two that I have ended up doing. This is like all of the code and all of the stuff that for me that I had. For this particular course, back in the day, and that's something you can do. There used to be there are many different types of websites and storage systems or places you can store Git repositories. Bitbucket used to be the place where you can create unlimited private or like private repository, so like not everyone on the internet could see it. And GitHub was the place you can create free unlimited public repository, so like.

00:10:00 Daniel Chen
This is why I showed Bitbucket was all of my school work used to be on Bitbucket because it was for school and didn't want to be public, and then Bit GitHub over time allows you to create essentially unlimited private repositories as well. So then everything just switched over to GitHub. So it's just one system, but nothing stops you from having a a repository for each of your courses from UBC moving forward. And then you are using the same essentially skills that you're using in this class around clicking the plus button, typing some message, and sending it off to GitHub. And then you have like a nice backup system of all all of your coursework. Today, what we're going to be talking about a little bit is about like history. So if you deleted something by accident and you want to restore it, or you know, let's say you're going through this.

00:11:01 Daniel Chen
Where did my picture go? Let's say you're going through your final doc example, and you actually want to go back to a previous version of something. You, in theory, could go and look at that previous version or restore it entirely, and that's something that you can do if you're making those commits or those snapshots of your entire project. So, if you were like me back in a day, I didn't. I ran out of either Dropbox or, Box or OneDrive space. You can totally just use GitHub as your place to store all of your course materials. I believe the cap for each repository is about two gigabytes. So, like, don't store like entire movies or or things like that up there. There is a there is a total file folder size limit that you can have, and I don't think you'll be having that many.

00:11:58 Daniel Chen
In across all of your other courses, I don't know if there's that many other movies or things or very extremely large files that you have to store. But if it's things like PDFs and word documents, maybe now and moving forward you'll appreciate QMD files, where you'll start taking notes in plain text files because you can just save it and look at it in GitHub. Those are all things that you can do from this class that you can practice in all of your other classes as well.

00:12:36 Daniel Chen
I might end up drawing a few things on the board, but I think that's okay. I'm going to use this chalkboard to draw out some of the concepts around it. I forgot to bring all of my paper and pen, so we're not going to use this for drawing. I'm not drawing that many things, so hopefully, if I just draw very, very big, it'll be.

00:13:09 Speaker 1
Okay. Okay.

00:13:20 Daniel Chen
So the way Git works is each commit is a snapshot that you have to actually tell the version control system you are going to make, and I think we covered that part a little bit already. Again, that's really different from you hitting Control S on the document. In your actual homework assignments in the last couple of weeks, you probably already had some sense of this. Where yes, you're coding in your Code Spaces environment, you can save the file, but then if you try to submit the homework assignment by the URL, like sometimes your files don't show up.

00:14:03 Daniel Chen
That is a very real version of you working in that coding environment where control S or saving the file doesn't actually mean you're creating the commit or that snapshot. So when I'm drawing these circles, I'm actually referring to the actual commit or the actual snapshot that you're doing. So in practice, what is what does that look like on your end? If you have your Dev container open. Just because you have saved something here doesn't mean that your commits were there, and that's why you were either clicking like this big plus button or clicking these individual plus buttons to like start to stage the commit, and then you have to write the message and then, actual create the message. So what was actually happening behind the hood when you click this plus button? So let's say I click this, and I click this plus button, or from last week I think we made.

00:14:58 Daniel Chen
A couple of new files, so we can add like these new files from last week. This is the changes that I made last week that I never added. You can see like it hasn't actually made that snapshot yet. All I've done is click that plus button. So under the hood, what's actually happening is when you go and click that plus button, you're actually doing this command called.

00:15:29 Daniel Chen
You don't have to know too much about this. This is literally just a sequence of commands that's happening under the hood. When you click this plus button, it runs a command called add, and then those files that you add end up in something that's known as a staging area. You're just staging or getting things ready for something to be saved.

00:15:58 Daniel Chen
So you click the plus button, things get staged. What does this look like here? You can see it right up here. That's why there's a section called Staged Changes. That is all of those files that's ready to be staged. When you go and type a message up here, that is sort of the message that shows up in this like running log that's happening down here. When you click Commit. It's actually going to take that running log, take whatever files were in that staging area, and then actually make that snapshot. Right. So that's the process that's happening. You've already done this, I think, I guess at least four times or three times over the last couple weeks, and your commits are what end up in.

00:16:55 Daniel Chen
Your commits are actually what end up on this particular GitHub repository or on the website, right? So, again, just hitting Control S or hitting Save on a document doesn't mean that the commit has happened. The way you can visually check is when you go to the actual repository, hit Refresh. And then whatever you did should be reflected in here. And again, that's how we're grading. We're essentially grading it by looking at the commits and going to the version that was before the actual due date, and then that's the version of everything that we're looking at for grading your homework assignments. Right. So.

00:17:50 Daniel Chen
You can take that to your own particular work as well. You could, in theory, install Git, bring it down, or turn your one of your course homework folders into a Git repository. Create a Git repository on GitHub that's private, and then start syncing your work from your computer to your GitHub account. Just remember, you still have to manually go through this process of like adding the files, writing some message. You have to write a message. We'll talk about Writing good messages in a little bit, but you should write some message that makes sense, not just like, blah or like making changes. Although sometimes you see me write stuff like that. You write the commit, and there is this what is not being shown right here, and this is one of the reasons where we've kind of simplified things, which is.

00:18:59 Daniel Chen
So we have this other place called GitHub. In theory, this is the thing that we we're using GitHub Code Spaces, so it kind of already knows like where when you write a commit, where the internet place is. But in theory, if this was your laptop, you do need this push pull mechanic. Says, hey, I want to take everything on my laptop and then send it off to GitHub. In the environment that we have right now for class, this is kind of automatic because where you're doing your work is actually on GitHub already. So when you like save and commit, everything kind of magically already exists on GitHub on the web interface. But if you were to do this for any other course that doesn't have GitHub Codespaces set up, then there is in.

00:19:57 Daniel Chen
Whatever Git interface that you end up working with, you'll see these buttons for pushing and pulling, and that's what it will do. It will take whatever is on your local computer or your laptop, and then just synchronize it up to GitHub. For the most part, if this is what you're trying to do outside of this particular class, I would highly recommend you not make your edits on this site directly because then you have to worry about pulling, and sometimes things can get out of sync, and then you'll, You'll get enough practice with that with your group project, so we'll probably revisit this concept for how life will will behave outside of this particular class when you get a couple of more group assignments under your belt. But this pushing and pulling is how and things end up on GitHub. It just so happens again that you're already working on GitHub. This this happens a little bit under the hood, so it's not really all magic, but.

00:20:55 Daniel Chen
It is kind of cool where you can essentially submit your homework assignments, or you can put your work on a GitHub repository, and it's essentially just saved there forever. I guess until Microsoft doesn't exist as a company anymore, which I very much doubt is going to happen. That is the version control system that we have been working with.

00:21:30 Daniel Chen
Use this a little bit more. That's not what I wanted to click. I'm just going to unstage that since I don't want to make those sets of changes.

00:21:47 Speaker 1
So what?

00:21:59 Speaker 1
Let me do this. Changes week. What is this four three week three?

00:22:19 Daniel Chen
When you click this button that says sync changes, which I think is what you actually get, that is doing this push thing for you. When you click the little plus button, it's adding. When you type the little message and hit the little commit button, it's making the snapshot. When you get the little sync button, it will go and sync changes up to GitHub. One of the things that I had mentioned.

00:22:53 Daniel Chen
Even though you can very easily like click on a file here, and we've done this in, I don't know if I've done this in one of the, not in this class. I I usually do this in one of the Git examples where you make an edit on the GitHub page, and how do you get that back into your actual coding environment? You will have to sometimes do this manual push pull syncing process, which is what is going to happen when you start working in groups. Because when one person starts working, they're going to send their code up to your collaborative or your project. You might need that code for whatever part of the project that you're working with as well. So this how this how collaboration essentially works in any any coding environment. I would say, especially if you work in any professional or if you have in any working environment.

00:23:50 Daniel Chen
If there's code, there hopefully you are using some type of version control system. If you are using a version control system, there's like a 98% chance that it is going to be Git. And then everything that we are going to be covering in today's class and what you'll be doing in your group projects, that process is what's going to be happening in the actual real world. So one thing that we will do is let's make an example. So I'm going to create.

00:24:47 Daniel Chen
I'm going to create a file here that's going to be week four. Dot qmd. So I'm going to create a file over here that's called week four example. Dot qmd. This is coming straight out of the textbook.

00:25:08 Speaker 1
What is happening? Why are you not up?

00:25:27 Daniel Chen
Before I go and do this, does anyone know why if I were to run this, it's not going to run? Does anyone have an idea of what's happening? I could ask the AI, but I realize what's happening. And can anyone figure out what's if I were to try to run this, it's not going to actually work? Anyone have an idea? Let's ask the AI. Why is it not working? Let's see if it figures it out.

00:26:09 Daniel Chen
So one of the things is it does have context of this actual file. So it was able to figure it out. So what I was actually trying to type before I stopped and decided to tell you that this is an actual thing. This code is not in a coding environment, so it's missing the three backticks and the actual engine for R, and that's why essentially it's not going to actually run as code. One of the other things that I noticed was if this was a Quarto document, I visually know that code should be in

00:26:55 Daniel Chen
It has a background color to it, and when I pasted it, why? What happened to all of the color part of my document? These are little visual cues that I've picked up over time. Something is clearly wrong, and something's not right. Something's not doing something correctly. Again, that's something you can do as well over time. Jesus, I need to turn the copilot off.

00:27:24 Daniel Chen
Over time, that's going to be something that you'll pick up as well. Where sometimes you will be just writing code, or you'll end up asking code from a prompt, and you'll be pasting it. And then when you when it's time to actually run the thing, it might not actually work the way you expect. And that's one of the things that I've picked up on, and something that you can pick up on as well. Okay, so a little bit about this particular code. We can sort of do a quick glance over what's happening. So this loading up some libraries. This candidate paths. So maybe here's like some files that might be where. Here's some paths of where the N Haines dataset might be. It's using C, so it is probably a list of things. And so here it is a list, or really it's a character vector.

00:28:22 Daniel Chen
Character vector of two items. One says examples, N Hains equity, et cetera, and the other says dot slash dot slash examples, N Hains equity, et cetera. So the first example would be if I was working from the start. So again, always know where the start of your project is or where this document thinks it is. I put this file at the very beginning, so it should assume that examples, N Hains equity. Data and enhance equity. That is where this particular file is. So this is the correct file for where this document is located. It's not dot slash dot slash because remember dot means one folder up, and if I go one folder up from where I currently am, I am not in this project at all anymore, and so this down here, this example is assuming that you're working in one of like these homework assignment folders.

00:29:19 Daniel Chen
And so that's that's where this dot dot slash ends up coming from. We have something called like the N Hains path. So we're getting all of the paths, and we're looking to see only give me the path where this file exists. And so only one of these two, that file exists in, which is the first one. So we're going to use that to again subset the list of candidate paths. And then we're taking well. Right now, there's only one item, but we still have to pull out that one item. So what we end up here is just the path of the file that actually exists. Again, this is code that a lot of times you'll see the LLM will end up creating. It will generate a lot of code, typically to do checking of its own. And again, that's just so when.

00:30:17 Daniel Chen
It gets an error, or when you get an error, when you copy and paste, or when it sees like, oh, something, like could not find. If it is able to operate in a loop where it's like, oh, I couldn't find it. Why couldn't I find it? Let me go figure out other ways to find it. This is one of the ways it, or it, meaning the LLM, the LLM can go and pinpoint where the error is. For example, it's much easier to say, "Oh, I couldn't find this particular file, because this particular file I was looking for doesn't exist," which is why, which is literally what this essentially what this text is saying. Versus, if it errors here, you don't know if it's an issue with the function that you're using. Like maybe it's not really a CSV file, and you told it to read it as a CSV, or maybe it is because the file doesn't exist, or this doesn't.

00:31:12 Daniel Chen
Really relate to this particular use case, but maybe there's a sequence of parameters that you've passed in that doesn't work with the data that you've put in. So you'll see a lot of code again to sort of make a lot of checks along the way. This is code that the LLM will typically write. That's not necessarily code that you need to write yourself all the time, but these are things that over time I used to do this. But now that large language models are writing this type of code more, sometimes I will think about prompting it or having this in my code a lot more, just because it's much easier to debug or figure out a problem when it's failing a check that you're actually looking for, versus oh, all of a sudden my code's not working. I have to go figure out why, and that takes a little bit more time, versus like I know exactly why and where something is not working. Okay.

00:32:09 Daniel Chen
So I'm going to load up this data set, and then we are going to take a look at this output. So we have this particular data set. We're going to summarize a bunch of calculations into one data frame. Remember, what summarize is doing is you're able to calculate all of these. What are they called? Summary statistics. A summary statistic is typically something that takes a bunch of numbers and returns one number back. A count is a summary statistic. A median or mean is a summary statistic because you typically give it a bunch of numbers and then it gives you one number back. Summarize is a function that takes.

00:33:07 Daniel Chen
All of your summary statistics that you may want to calculate, and gives you a data frame back. So you have a data set of summary statistics is what summarize is doing. And so here is our data set for calculating a bunch of summary statistics: number of rows, number of missing. So remember, this was the little trick that we covered last week around how to calculate number of missing for two particular columns.

00:33:37 Daniel Chen
In our dataset. Let's go and do this particular loop around committing in this particular example. Again, I'm going to add this particular file. I'm going to write a message for the first commit. For week four. So I have a nice little commit message. This is telling me what I've done. Maybe if I wanted to be a little bit more verbose, I can say summarize, and that is telling me that this is the thing that I've done. This part is, I would say.

00:34:33 Daniel Chen
Get into the habit of doing work like this, meaning get into the habit of once you've completed a small task that you're like, oh, this is a nice little bite-sized piece that I've like just completed. Get into this particular habit of like just writing this commit or the snapshot for what you've just done. So sometimes that might seem a little bit tedious, and if you skip it, we're not really grading on. Like we're not we're not grading on saying that you have to have these commits and each one of these commits has to have these little things in it, but this a pretty good habit because you'll see in the next next little bit, this a really good habit because one of the things it does make you do is force you to work in smaller pieces. So especially when code is a very new thing or when you're building out something.

00:35:28 Daniel Chen
It is nice to break down your problem into small pieces and then just chip away at those small pieces. When you sort of get into this particular habit of like, here's the task that I've just done, take a step back, and then go through this process of like committing your work. Why is that also nice? Is this is a new file, but if this was a file that I've been working on in like over over a period of time. When you click on the little plus button, or when you don't click on the plus button, when you click on this section and you see the changes, you actually get to see like it's the difference or the diff of all of the changes that you have made. So you'll see this in the next example, but this is also another way where you can review work, and work is much easier to review when it's in much smaller pieces. Again, you're going to see this in the group context.

00:36:27 Daniel Chen
But even for yourself, if I were to give you an entire analysis that had like a hundred lines of code on it, and I said like, "Hey, can you take a look at this?" It will probably take you a really long time to be like, "What is happening?" In like, why did you send me all of this in one go? Like, even though like we sat next to each other, you couldn't like just tell me like this is what I've done. Working smaller pieces make it a lot easier to review for yourself and for. And with other people, so we can click the little plus button, write our little commit message, hit commit, and again, I guess this is the other thing. Since we are grading based off of what's on GitHub, don't forget to click the little sync button, which is essentially doing. In theory, it's really doing pull and push at the same time, but as long as all of your work is in this view right now.

00:37:26 Daniel Chen
In you're only assuming you're also only working by yourself. It's really only doing a push session to get everything synced up to GitHub. Okay, so now let's see what happens if I take this particular code and I replace it with another block of code right here. So. Pretty much all I've done is add those two lines plus this line down here. We could, for example, take a look at how this has changed the output. So instead of one row of summary statistic values, we have three rows now. Where do these three rows come from? It comes from this feature right here, this group by. So we have essentially three different levels of income group, and.

00:38:24 Daniel Chen
We get the same summary statistics that were looking for before. So actually, this is a different set, but we are getting summary statistics just like before, how were using summarize. But now we get one row for each group that we have. And so one of the nice things about using version control systems, and if I close others, is now if I click on this. We actually get to see, like, hey, here are all the sets of changes that I have made in that particular that I just pasted into this document, right? So, why is making these snapshots like the more frequent, the better? It's because you actually get this particular view, which is able to show you, hey, you added.

00:39:19 Daniel Chen
Everything in green is something you've added, and everything in red is something that has been taken away. So when you make a change to a line, the way the computer essentially reads it is you deleted a line and then you added a new line. So that's why it looks like yes, all of these things were like deleted, and then this was sort of put in its place. So. These commits are really useful when you're working by yourself because you can actually see, like, oh, this something that I have done, and you actually get to see those changes. You could, here is your review process where you can say, hey, this something that makes sense. I am, I, I can review the work that I'm looking at. So, whether or not you're typing it or whether or not the AI or LLM is typing it, this where you can say, what is actually happening here.

00:40:12 Daniel Chen
There's a filter, group by, summarize command. So if I was reading this code, that's how I would read. This is the way I would start reading the code, or to sort of learn what is happening in R. There's a data frame. I'm doing some type of filter. So remember, filtering is reducing the number of rows, or you're filtering the rows based off of some criteria. Then I'm doing group by. So I'm there's going to be a calculation somewhere coming up soon. And those calculations are going to happen for each value of group by, and then summarize is going to say here the calculations that's actually going to happen, and then the way I usually recode is filter. One am I filtering? Then I'll read the right hand side, so I'm looking for things that don't have missing BMIs, that don't have missing income groups, the age is greater than twenty and less than eighty. So that's sort of what got filtered, and then I'm going to group by the income group.

00:41:09 Daniel Chen
If I already ran the code, I can see. There's three different income groups in my particular data set. What is actually getting calculated for each income group? It's going to be n, mean BMI, and then this drop groups sort of. What this does is it essentially gives you a regular data frame object back, and that will only make more sense when you take this particular data frame and do other calculations with it. This will prevent those calculations from working at a group by level, which is something that bites people occasionally when they start doing work with data frames. So what ends up happening is if you were to forget this line here, or there's another function called ungroup in R.

00:42:06 Daniel Chen
Like later down the line, like fifty lines later, if you end up saying, doing another, like summarize call on something, it's going to automatically summarize based off of the income group versus like, oh no, I actually wanted it on this full column of values. Like I just need the aver, I just need the average, I just need the total count of this column, not the total count per group. And so you'll see a lot of times. One of the things you, as the person who is now reading code, one of the things that you want to be very mindful of is anytime you see a group, group by call somewhere in the code, you should expect for an ungrouping behavior to happen. So in this particular way, the code has been written to say dot groups equals drop, where it means drop the groups.

00:43:00 Daniel Chen
Versus another way, which is piping it into a function called ungroup, and I'll show you what this looks like when we run it. So if I were to run this now

00:43:13 Speaker 1
I guess it doesn't tell you.

00:43:23 Daniel Chen
I guess it's not showing up. But what ends up happening, and this is one of the things you want to be very mindful of, is if I were to just run the N Haynes this pipe, this cleaning pipe, cleaning section of code up until the group by call, you'll see here what ends up getting printed out is here's a data frame. It's got fifty thousand rows, and here's my data down here. You'll see that there's like a.

00:43:58 Daniel Chen
A visual indicator that this particular data frame is already grouped by this income group that has three things in it. Typically, if this is a data set that you are working with, I want to say it's a pretty good rule of thumb that if you know you don't need something done in a grouped behavior, you shouldn't see this particular line that says 'groups by something.' You want to get rid of that grouped line whenever you can, because you might forget that that's there, and then you might end up doing calculations that are grouped when you don't actually want it grouped later on. That's why you'll see code that ends up doing things like dropping it very explicitly, or you'll see code that does ungroup like that. Those are all different ways just to make sure that when you run.

00:44:54 Daniel Chen
This particular data set again, you won't see that grouped line underneath, and this might actually be a change now. Over the last couple of years or something, where summarize will probably automatically drop the group for you. But again, these are since you are not writing the code in this particular class, we're doing a lot of code that's AI assisted. Since you're not writing this stuff piece by piece by hand anymore. That means that it's going to be very. It's going to rely on you to make those checks yourself, and these are one of those checks that you're going to have to be mindful of. Okay, so we're looking at the diff. So this is known as a diff or difference. It's D I F F. That's how it's going to be referenced in a lot of the documentation. Here is the actual.

00:45:53 Daniel Chen
Diff of the actual code, and once you're happy with this, you can add commit and make that actual commit message. I can stage this and say do calculation on intom.

00:46:17 Daniel Chen
So probably something you may or may not have seen already in code or in the last couple of weeks in your homework assignment, but this process is what is actually happening, and the reason why I'm doing this is because today we're going to take this process and get it to work in a more collaborative environment. This notion of commits needs to be pretty solid, which is why it's kind of a review of a couple of things at once.

00:46:54 Daniel Chen
So one of the things that can happen is what happens if there's a change to the code. I change this into a two instead of a one, and if I were to go and try to run this code again, it's going to say, "Stop! This thing couldn't find my dataset anymore, and now none of your code will." Hold on, that's not true. If I were to restart R, which is if I were to restart the R environment, that code is not going to exist anymore. Or sorry, the dataset won't be able to be found anymore because I've changed this particular number. So one of the things you could do.

00:47:52 Daniel Chen
And this is the reason why having these commits in very small pieces, like as soon as code works, I would say like just write a commit message for it. The reason for that is you can now go back and look at this diff and actually see like well it just worked, and then I type some code that either I wrote or the model or the LLM wrote, and now this code isn't actually working the way I want it to work anymore. You can look at the. Actual diff and see that oh actually it made this particular set of changes. This could have been an accidental keystroke. It could have been something that just got put in. The model maybe could have thought that you were in a different working directory, et cetera, et cetera. A bunch of reasons why your code with changes you knew about or don't know about can break something.

00:48:45 Daniel Chen
One of the reasons why this is really nice to have these commits or snapshots as fallback is you can right-click one of these files and you can actually say discard changes, and what this will do is it will discard that file to the last actual commit. So having more commits whenever you have code that works means that as soon as your code doesn't work, you have a smaller diff to look at to figure out why this code isn't working. And if it's not working and you can't figure out why, or you just want to undo that process and get back to a working state, what it will do is it will just throw you back to the last commit message that you've actually created. So that's the easiest way to deal with it.

00:49:40 Daniel Chen
Like here's code that was working. Here's code that wasn't working. The other way that you can sort of look at code over time. So you've that final doc problem is sometimes you're you're making a bunch of changes to a particular document, and you maybe deleted a piece of code that you like just don't need in the homework assignment or in your analysis anymore. But you still want to keep track of it, which is why we have this whole Renaming by final doc. Essentially, what Git allows us to do is that terrible naming convention that we used to have is now being used. You can essentially think of it as like instead of the actual file name, we're now storing it in the commit message. So nothing stops you from in here saying final one, final two, final three, final four, final underscore DC, et cetera, et cetera. But the benefit of sort of.

00:50:39 Daniel Chen
Sweeping it under the rug or in those commit messages is that, for any one person like yourself or a new person on the team or your collaborator, it's really clear that hey, this is the file that we're all working with. You don't have to go and hunt down which version of the final document are you working with anymore. It is just this document. If it's on GitHub, technically there's another piece over here.

00:51:14 Daniel Chen
Um, if you're on the main branch or this, the first sequence of commits, this linear sequence of commits, um, as long as it's on that main branch, then you couldn't essentially say, oh, this is like the the clean or steady part point of our analysis. So, one of the reasons why you want to start writing decent commit messages is because you end up in this. Scenario where you can actually see like changes from week three. I can click, and these are all of those changes from that particular snapshot. And I can look at that particular document in that point of time. And if I really need to pull out code that I've deleted or something, or I just need as a reference, like how did I get here? And you can look at the little sequence of how your file got to that particular point.

00:52:10 Daniel Chen
You can use the actual commits because it's storing all of the snapshots. You can use those snapshots to essentially go back in time and look at different files in their previous state. So that's again a really nice reason why, when you're working in, when especially when you're doing data analysis, if you're thinking like, "Hey, the first thing I need to do is clean my data set," as soon as you get your data clean to a certain point that you're like, "Okay, that was a lot of work." I kind of want to save this. Write a commit message. There's almost nothing wrong with writing more commit messages than you think is necessary. But what could end up hurting you in the future is if you do your entire analysis in one giant commit. It gets really hard to figure out, especially when you work with other people or when you work on a large analysis. If something goes wrong, it gets a little bit harder to figure out where was the little piece of code.

00:53:06 Daniel Chen
That actually broke everything, or like, where did this error come from? If you just, if the only thing I had to come back to as the previous state was finished my analysis, then the only way I can figure out like what went wrong with my code is like start from the very beginning and then just start trying to figure out each little piece by piece. Where did this problem like, where to even look for this problem and hunt it down, versus being able to Look at a whole sequence of commits around. Here's the last sequence of things that I've done. You can sort of start to pinpoint just by looking at the diffs. Like here's the thing that this code touched. Is this like remotely related to what I'm currently working on? If the answer to that is no, then you can go to previous commit and just start figuring out where that bug or that code change has happened. So there's a lot of.

00:54:05 Daniel Chen
Other effects that end up being really useful when you end up writing more commit messages. We'll take a five-minute break. Come back at the top of the hour, and then we will talk a little bit more about ignore files like that on managing your actual project.

00:54:42 Speaker 1
Huh.

00:54:44 Speaker 3
So I can attend the class next week. Is it okay to submit the assignment to you later? Because I saw on Canvas, it's like it's no due date for the assignment.

00:55:00 Daniel Chen
It's always Monday before class. Is that wrong?

00:55:06 Speaker 3
Is it no due date on Canvas? So is it okay for me to submit?

00:55:13 Daniel Chen
I need to fix that. Is it in Canvas or is it in? That's because I just released the assignment. So in the actual here, there should be a due date. So follow this due date. But the actual Canvas due date is always the Monday before at four o'clock.

00:55:35 Speaker 3
So that assignment is recently passed. Assignment four. Two. For the year.

00:55:46 Daniel Chen
Yes. So that was the one I was due this week. This week. Yes.

00:55:55 Speaker 3
Is this?

00:55:56 Daniel Chen
Because.

00:55:57 Speaker 3
Is this the same as last year? Really? Is this the best year? Because we didn't have last week's. All of the assignment due dates are listed.

00:56:07 Daniel Chen
Like what? So we taught it. These are all the dates.

00:56:16 Speaker 1
So sometimes.

00:57:08 Speaker 1
This thing. These words are not real.

00:57:39 Speaker 1
It's really up to.

00:58:46 Speaker 1
Because I love people.

00:59:22 Daniel Chen
Okay, so the next thing that we're going to talk about is just keeping the repository like clean. Meaning, there are going to be times where you have this particular source document, and it when you go and render a bunch of stuff with it. There's going to be things you want to keep in this particular class. You might want to keep the HTML file. You might want to keep the PDF file that gets generated. I would say, if you're working on your group project, those output documents like the HTML and the PDF, when you are working on them.

01:00:15 Daniel Chen
Those are going to be documents that, when you're working on the actual report in like sort of in real time, those generated files are probably going to be something you don't necessarily want to put into version control. Why? Because you can always regenerate those documents from your actual source document, and you don't want to end up in a scenario where what happens when two people edit the same file at the same time? It's known as a conflict, and what ends up happening is a conflict in a file that you can very easily edit is something that you can actually fix. Versus a conflict that happens in like a PDF document, which you can't necessarily really fix. The way you fix it is you delete the PDF and you regenerate the file anyway. So you could sort of get around that problem around dealing with what happens when everyone's working on the same project at the same time. You might want.

01:01:14 Daniel Chen
To ignore certain files that end up being created, so there is a very special so in every single GitHub repository, at the very top of the project, and this the convention. There's typically a file called a .gitignore file, and what this does is this a file that essentially tells Git, hey, like there's going to be files that might change or might show up or Etc. Like whatever, I just want you to not keep track of it. So what what is an example of that happening? Let's say for example, I'm going to write some code to do this. Right. So let's say I have these three PDF files that I ended up creating.

01:02:13 Daniel Chen
You'll notice that in the version control system, it's going to pick up like, hey, you have these three files, right? Like, I am, I have told Git that everything in this project needs to be, needs to be kept track of, and it's going to say, okay, you just created some new files, or maybe you edited some new files. It's going to start keeping track of those changes, right? In the previous example, you saw when I edited. The week four example it showed up as week four example with a M here. That M stands for modified. That was a file that it was keeping track of before, but now you've made changes to it, right? So I can do something like title week four example. If I save it and give it some time, you'll see that this week four example was modified, but other times.

01:03:07 Daniel Chen
If I were to render this document right now, I might get a PDF that comes out of here, and that PDF is an unmodified, or sorry, an untracked file from this for for this repository. So a couple of ways you can deal with this you can, for example, this a set of changes I want. I can click on Stage Changes, and I can say Set Title for Document. Right, so.

01:03:36 Daniel Chen
I can do that, but you. But the problem is, you constantly have to remember to like, not plus or not add those other files that you don't want, right? And to make matters kind of worse, is there's a really convenient button up here that like adds everything. Typically, another way you can think about it is, you want to structure your work such that you can pretty much click like add everything. Which is saying like, hey, all of the changes that I've made is like one unit or one small piece of work. Sometimes doing a small piece of work might touch on multiple files. It might generate multiple files, etc., etc. Or maybe you need a data set that you do a small like analysis on, and that might take two files that need to be committed. So sometimes you do need to add multiple files for a commit.

01:04:31 Daniel Chen
But it gets really annoying because if you start making changes to a project, and you constantly have to remember, like, no, these are files that I don't want to keep track of. That's a lot of like additional things to remember when it's so much easier just to click, like, at all. And then you end up adding these files that you don't actually care about to begin with, right? So you want to prevent that from happening. So one of the ways around that is there's a special file.

01:05:01 Daniel Chen
Called dot git ignore. It begins with a dot, so typically, most normal computers when you're like browsing and double clicking around your file system, you won't really see it. But in a lot of these coding interfaces, you'll see all of these like hidden files and hidden folders. And this dot git ignore is a hidden folder, or sorry, it's a hidden file, and it's a special file because what happens here is any File that gets listed here, or any pattern of a file that gets listed here, Git will just ignore it, which is exactly what this file is doing. So, how there's a couple ways we can ignore the files that I just created. One of the ways is maybe if it begins with file something.pdf. So I can use a star to say like, hey, there's like a bunch of characters that might exist here.

01:06:00 Daniel Chen
So I can say file star dot pdf is going to be something I want you to ignore. If I save this now, you'll notice that those file one dot pdf, file two dot pdf, it no longer shows up here because Git has ignored it because I, in this particular file, I told it to ignore. So that's one of the one of the key pieces of things that you're going to end up. Working with, especially in your own group project, for ignoring files and folders. So if I were to now run through this particular commit cycle, I can still commit this particular document. That's fine. But now I can actually click the like commit all button and say ignore file PDF final star dot PDF as an example.

01:07:01 Daniel Chen
And this is really nice too, because as a commit message, if maybe there is like a, an output that says like file underscore something, report, dot pdf, and it's not showing up, and that's something that you want actually to be there, you can essentially see it in the git commit history. Like, oh, I actually did end up ignoring something, or maybe now that you know that there is a Specific type of file called a .gitignore file. This is the first file to to open up. When your question is, "Hey, why do I not see this thing that I've clearly made changes to?" There's two reasons why it might not show up. The first one is maybe you didn't actually hit Control S to save document. If you didn't save document, Git's not going to know it got changed or it's a new thing, and so it's not going to show up here. If you're very sure that you've like.

01:07:56 Daniel Chen
Save the actual file, and it's still not showing up. Then the next place to look is in the .gitignore file, and do a quick browse through it to make sure that whatever file that you think is not showing up, is there a pattern that governs that particular file? One thing that can happen really easily is you might ignore all the PDF files, or not even .pdf, but like it's like something PDF. This will ignore like any file that ends that has like a PDF in it or something like that. Depending on how this pattern is written, right? So if you end up doing something like this, like if there is a sequence of characters or whatever in any file that has PDF, then it will get ignored. And so sometimes your files or your ignore patterns might capture too much, in which case you might need to modify your patterns.

01:08:53 Daniel Chen
So it can allow certain files to go through. There's also another way where you can force add a file. I don't think there's. I don't know if there's a web interface for it. But there there are ways to force add files, where even though it's said to ignore file underscore file star dot pdf. You could forcibly add another file, in which case then it will be tracked in version control. The other way you can do it is you can put a this like exclamation mark or bang is I guess how we say it in code. You can say bang something, and then that file, that particular file, for example, file one dot PDF, that will be unignored, and so you can unignore files that way as well.

01:09:49 Daniel Chen
So I want to, yeah, I'll do it that way. And this on ignore. Okay. I'll just keep that there as a reference for you in in class. The other thing around this particular ignore file that ends up being a little bit of a review for some of our other concepts is.

01:10:20 Daniel Chen
Wherever this ignore file exists, so right now you it's in the very beginning or the top of our project. The way it finds other files and folders to ignore is relative to where it is right now. So if we go back to this whole concept of relative and absolute paths, we sort of see this again. So where do we just see relative paths? When we were loading in our datasets, this was a relative path.

01:10:50 Daniel Chen
Where from our starting point examples Enhance Equity Data something something that's where our dataset is. So from the beginning of our project here, it will start looking for these particular files to ignore. So right now, a lot of these files that don't begin with a slash or have a slash in it are here. Are files to ignore from the root of my repository from like the very beginning. So if I were to say, I think if I were to move this in here, this may or may not work. Yeah, that's not gonna work. You'll see. Actually, I think this is mostly because of folders.

01:11:45 Daniel Chen
If you have particular folders that you want to ignore, you can also ignore particular folders. But if you have folders and subfolders you want to ignore, you have to refer to them in a relative path notation. So, same concept as reading in your dataset. If you're trying to ignore entire file or entire folders, you have to specify like here's the actual location of that particular folder, which is why right now you'll see like here's the dot quarto folder that gets ignored essentially twice. Because we're looking for the .qordo folder at the very beginning, but we're also looking for like subfolders for .qordo, and the double stars is like a little trick that says like in all of the other subfolders there might be other stuff happening there. Right. So again, when you are.

01:12:39 Daniel Chen
In this view right now, where you're trying to say like, "Hey, I'm going to add all of these files to my staging area," and you're seeing a whole bunch of files that you're like, "I don't really know what this is." That's a pretty good sign of like something you need to ignore, or here's something that my code generates, and I don't want like, how do I phrase this? I don't want to have the risk of like this particular figure or this particular data set going Out of date with my code because that can always be regenerated from just running the code itself. Those are pretty good candidates for hey these are files and folders that need to get ignored. One of the other things around project folder structure, and you'll see it from the actual template that you copy from, is there is a reason why like we have a data folder and there's also a reason why we have something like a output folder.

01:13:37 Daniel Chen
That makes it easier to say, hey, when I'm generating a figure or a new dataset or reading in a dataset, here are fixed locations where that's all coming from. So I think last week we had an example where you read in a dataset, you did some cleaning, and then like you saved it out to a particular file. If you save it out to a like a strategic folder that's called like data slash output, you can ignore the output folder and then. You don't have to worry about all of the files that you might save in there. You don't have to ignore individual files. You can ignore entire folders, and that way, all of the things that are generated by your code are just automatically ignored. And if you ever need to pick it up, or if you ever need it again, in theory, you should be able to run your code because your code is the actually the most important thing. You should be able to run your code to generate the dataset you need or the figure that you need.

01:14:32 Daniel Chen
That's one way you can guard against figures going out of date. Where oh yeah, I need to make this change to the code, but you forget to like update the figure for some for whatever reason, or this PNG file. This way, the code when you run it updates the PNG file, and then if something else is reading from that particular file when you render that document as well, it's also going to pick up the updated file. So you. That's one of the reasons why sometimes those particular pieces of output I don't I just completely ignore them because if it's missing that means that I probably deleted it because something was out of date and it it's a hint that I had to run something else higher up in my code base to make sure that I get the updated figure or something like that. Okay, so that's Git.

01:15:30 Daniel Chen
In if you were if everything that I've told you right now, you can take what I just said and apply it to using Git and GitHub outside of this particular classroom, right? For ignore files, it might be that hey your instructor just gave you like a one gigabyte video file to to watch or something for this particular class. You want it in your particular repository. It doesn't fit on GitHub, so you might ignore it, right? And and maybe copy it somewhere else on your computer, and use your Dropbox space for things like that instead of all of your other homework assignments and stuff. So, that's all Git with. Hey, if I if I was the only person working on this project, and.

01:16:22 Daniel Chen
It's just one little project that has a linear sequence, and I don't have to worry about coordinating multiple tasks or anything like that. That's all you need to know. But in this particular class, starting today slash next week, you will be in groups, and so now you have to sort of manage how to work in a group setting. We sort of are skipping a step. This is one of the I would say this is one of the downsides of having only one lecture per week. In theory, if I were, if we had like another, like if we had a smaller break between classes, what I would have you all do is, in a group, try to all work on and edit one file at the same time, and then you'll very quickly see like it becomes a a kind of a train wreck right away.

01:17:19 Daniel Chen
But we're going to circumvent that, and we're going to build on this concept on how people, essentially any people who work with these version control tools, how they actually work with them when you have multiple people. But also, again, a lot of the things around Git you can do yourself. You don't necessarily need another person to do what I'm going to be showing you. So, one of the things that happened. Is when you work in groups, you have hopefully you break up certain tasks amongst your group members. Like maybe one person, like certain tasks, you're kind of blocked. Like I can't do anything until the data is loaded and cleaned, and I can't. For example, I can't go and make figures with data. I can't make summary statistics with our data set if it's not already processed.

01:18:18 Daniel Chen
In some capacity, so there's always some step where everyone in the team needs like the common starting point. So in that case, like hopefully the person who is responsible for that like gets to that state fairly quickly. Because again, if you think about it in even for yourself or with with like other work, if the person in charge of getting the data together isn't able to get the data together, like it doesn't matter that I'm. Responsible for like making a whole like analytics dashboard out of it, like I can't load the data. So, assuming that we have a good starting point, right? So we have some repository, and this is what you'll be working with in your group project. You'll have a template repository to start from. Maybe you'll go and write a command for loading the repository.

01:19:17 Daniel Chen
And then what ends up happening is the rest of your group or teammates are you break up your project into smaller pieces and how do you collaborate in like those individual tracks? So the concept that I'm going to show you is called branching, and all branching is is instead of everyone working on the same like if you think of it as like universes the same universe of, Commits, I could, in theory, work in a parallel universe, so such that the changes that I'm making, until I'm ready for it, doesn't affect the work that you're doing, right? So, why is that important? It's because let's say I'm in charge of putting together like the exploratory data analysis part, and you're in charge of, or someone else is in charge of just.

01:20:15 Daniel Chen
Making figures for this particular data set, I might have a bunch of iterations around. Oh, I want to group by this variable and summarize on this variable, or I want to mutate a series of columns into create a new column because that's going to be important for some other summary statistic. I want to be able to work freely without having to constantly coordinate the code that I'm writing. With someone else that's writing like plotting code, and the reason why that's important is you don't want to. You want again from the very beginning, the first thing I mentioned. You want to be able to write commits and make your snapshots as you want, and maybe you want to be able to see it on GitHub because that's your like safe space of like, oh, the work is actually saved somewhere that can be graded. You want that process to be.

01:21:12 Daniel Chen
As frictionless as possible, and so if you're ending up in this scenario where like five people are working on like the same thing, you constantly have to coordinate all of your code bases together. And it's a little bit easier if you're like in class, sitting next to one another. It gets really hard if you're not working on the project at the same time. You can imagine how a lot of companies, I guess fewer companies now, but Companies, a lot of companies used to be like fully remote, and like, how am I going to coordinate with my coworker if they're not even in the same building or city or country as I am? You want to be able to just do the work that you're tasked to in as frictionless way as possible, and then you coordinate the synchronization later on, and that usually happens. You know, maybe you fix a day like, hey, every Monday morning or something, we're just gonna.

01:22:06 Daniel Chen
Coordinate and sync all of our work together, so then we can continue working for the rest of the week, right? So, you want that process to, you want to be able to work independently as easily as possible. So there is this concept called branches, and really all it's doing is essentially you still have a sequence of commits that you're used to, except now you might have.

01:22:41 Daniel Chen
You might have again, like here's Daniel's like sequence, like here's my EDA like data extra data cleaning, creating new columns, and then here is like I don't know Eric's sequence of commits for creating visualizations, or maybe you have another color.

01:23:10 Daniel Chen
Or maybe you have like Julia's commits, who is writing the actual report, and all they're concerned about is like writing the text, and it's not even code. It's like the text portion of the Quarto document. Hopefully, you end up sectioning off your work where not everyone is working on exactly the same topic, but you still want to be able to work sort of independently and just be able to do your work and submit it up to GitHub. So you want to be able to do This process, where you can jump, essentially also jump between different branches or different states of your project, and that's what branching is. In, if we were to sort of take this like green sequence of commits, and just look at what one branch looks like, it essentially what's the best way to do this.

01:24:12 Daniel Chen
It essentially just looks like. Hopefully you can see that. If I am working on this commit, that's just the green. Essentially, what this looks like is this linear sequence, right? The way I'm drawing it looks like there's a kink in the graph, but in reality, it's really just a straight line, right? So it's really the same idea as. That is a straight line sequence of commits. When you're working in branches, it really is a straight line sequence of commits. All the the thing that is ends up being different is maybe this like named branch one, maybe this named branch two, and this named branch three, right? Whereas before, all of that was called main. So this where main was. So all of that was considered main, but.

01:25:11 Daniel Chen
Now, like these, like three or whatever, new ones are part of this other branch. But if I look at it in like the history view, it really is like that linear sequence. So you're still doing the same add commit, add commit, add commit. That part doesn't change. It just means that like, hey, you end up in this other world where your work is isolated from someone else. Right. So you can also think of it as.

01:25:41 Daniel Chen
Other than these two new buttons you have to click to create a branch, you're essentially just working as if branches don't exist, and that's the whole entire point. You're supposed to be able to work independently from all of your other coworkers, and then deal with coordinating the work when it at like you know at times that you all expect or like times that. You either meet together, or some, or something like that, right? So again, you want to be able to work in as frictionless way as possible. Okay, so how does that work, and why did I like draw out all of this stuff? Because conceptual or visually on the actual screen, it's like only a couple button clicks, but this is what's happening under the hood, which is if you.

01:26:39 Daniel Chen
Like it's not something that you'll be tested on. There's no, there's no test, there's no exam in this class, but it might be useful when you're debugging. It might be useful when you start asking the LLM like, what is happening with my code. The other, the other reason why all of these things end up being useful, is it guides the vocabulary you need to talk to the actual model, right? So. Maybe the question isn't about the actual codebase itself, but maybe you'll have questions around. I have a teammate who is working on this branch called this thing, and I'm working on this branch called this thing. How do we combine our code together? Right, like you, you still need some of the vocabulary for figuring out, for telling the LLM like what you're doing, so it can go and help with answer to tell. Um, it can go and help with answer.

01:27:38 Daniel Chen
Okay, so I I know I think there's like a break in like two minutes, so we'll like create the branch and then hopefully that's that's about as much time as we have before the next break. So the button that you need to click down here, you'll see at the bottom there is a the little thing called main, and it even has a couple of I don't know push two commits yeah. So it's even telling me down here next to main like, hey, some something's out of date, which means this is telling me that I I have yet to push some commits up to, up to the remote. And what I'm going to do right now, you'll see like here's the diff. I'll show you how to ignore a file. So that's the actual commit message, and you can see here why am I getting the zero and three? It's because it's there's three commits that I haven't seen.

01:28:32 Daniel Chen
And you can see here, this branch or this view actually has some of the words that we have seen, right? Like this main is this sequence of commits. This origin main. As far as this class is concerned, this this telling you on GitHub, like on the internet version, what does What is the version that exists there? So, like when you see these two main branches, sort of like not next to each other, that's also your visual cue. Like, hey, if I were to submit my homework right now, there's going to be work that is not not there. So that's your visual cue for stuff like that. So, how do we go and create a branch? We click this little button down here, and then all we get are these couple of options that says create a new branch or create a new branch from.

01:29:31 Daniel Chen
We will create a new branch, and we can give this a "my first branch," and you can give it that particular name. And all that did was give you a new sequence of. All that's doing is every time now when you're making a commit. It is essentially creating those commits under a different branch, right? So all when we were in this world, every time we created a branch, essentially main was moving as we created each branch. So I can always say like, oh, go back to the main part of our repository, and we always end up in the last state of or the newest state of branch of the main branch.

01:30:31 Daniel Chen
Now that we've created one, so before we were on main, and we just created one, exactly where we are, and now every time we go and create a commit, that B one is going to move along, along each commit, each new commit that we make. All right, cool. We have a break.

01:31:05 Daniel Chen
I think it's five minutes, and yeah.

01:31:07 Speaker 4
Yeah, five minutes. Perfect. Can I use the chair desk?

01:31:12 Daniel Chen
You can use whatever you need.

01:31:14 Speaker 4
Thank you. All right, we're going to start seated for this movement break. So, if you want, you can just push back to have a little more room. But other than that, you're good to go. Okay. We're going to do figure four. So you're just crossing one leg over, making sure your ankle's right where your knee is, and then you can either push down with your hand on your knee if you want a little more stretch, or hinge forward. If you're already feeling a stretch like this, you can also leave it like that. This one, as you guys probably can guess, is good for your hips and hip flexors.

01:32:09 Speaker 4
You can add an ankle circle to this one, so just loosen it up a little as well. Or you can just stay like this. You can switch sides.

01:32:40 Speaker 4
Adding the ankle circle in the back. Now we're going to go ahead and put one foot flexed in front of you and extending that leg, and the other one keep bent. And you're just going to hinge forward, feeling that stretch in your hamstring, calf, all the way down to your ankle. This one, yeah, you might need a little bit more room there. Really. Of actively flexing your foot, when you are thinking about using the muscles the front of your leg, it'll relax the muscles in the back of your leg.

01:33:24 Speaker 1
We're gonna go ahead.

01:33:32 Speaker 4
And switch sides. So just flex the other foot this time.

01:33:44 Speaker 4
Forward as much as you can with feeling.

01:33:49 Speaker 1
Stretch. We're.

01:33:56 Speaker 4
Going to come back up. Now we're going to move to upper body. We're just going to do a nice neck stretch, and then have the other hand behind your back to really get into that trunk.

01:34:21 Speaker 4
Make sure to take some deep breaths while you're doing this. You can add a little bit of movement into your neck if you'd like to try and find a spot that might be a little more tight.

01:34:52 Speaker 4
Resting your hand on your head, and then the other hand just crossing behind your back.

01:35:00 Speaker 1
Last.

01:35:22 Speaker 4
One. We're just gonna do a little bit of back bend. It's called. So you're putting your hands where your lower back is, and you're just thinking of looking up and kind of arching your back, pushing your hands into your lower back, and shifting your spine. Hands back under your back, and looking up.

01:35:52 Speaker 4
All right.

01:35:52 Speaker 1
Thank.

01:36:09 Speaker 4
You guys. That's it for the movement break today. Thank you for joining me, and I hope you feel a little bit better. I think you had the shirt and coat on earlier. Feel free to fill that up, fill that out if you have some comments.

01:36:25 Daniel Chen
Thank you. So where did we leave off? I'm going to demo this, and then we'll spend some time for everyone else to do it themselves as well. Down here, there was a button that said Main. We clicked it. I clicked on New Branch. Then I typed in my_underscore_first_underscore_branch, and we have created a new branch. The way Git works is that you're typically always tied to a branch, and any time you start making commits, you're essentially bringing that branch name with you. By default, there was a branch called main, and every time you made a commit, you were essentially bringing

01:37:18 Daniel Chen
That main branch with you, or to the last commit that you're making. Right now, it's the same concept, except instead of being on the main branch, we're now on a branch called my first branch. And what that means is, every time I start making a commit, I'm bringing that branch with me. It just so happens that branch is no longer called main. It is called B1 in this figure, or right now in what you see on the screen is called my first branch. What does this look like in practice? For example, that is not a great example right here. Let's say I try to put in the original code that I had before. Let's say I am.

01:38:17 Daniel Chen
Trying to have the original summarize with this group by summarize, and that's sort of the change that I want to go and make, right? So maybe it's like, oh, why did you get rid of the group by one? Sort of the original one was kind of useful in in terms of counting missing, in count the in terms of counting missingness. So same, the button clicks that you make are going to be the same. We have here. Here's the diff. Here's all the changes that I've made. You can opt to see like oh I added a new line here. You can opt to get rid of it. That's something you can do. And this is the new set of code that I'm reviewing. And I can say add in the original count and a as a new code chunk. Right. So that's going to be the commit that I'm going to make. I'm going to hit commit.

01:39:11 Daniel Chen
And you'll notice right here, as soon as I hit commit, what essentially happened was main and origin, like those commits. Hold on, I think you'll see it if I hover over it. Main and origin main, or the main branch, is in one location. And then what I just did after making that first commit was I moved something else to another commit over here.

01:39:42 Daniel Chen
So mechanically, other than clicking new branch, the buttons you click, the things you type, are going to be exactly the same as working in single branch mode. Now the publish button, it doesn't say it says publish branch. It's going the first time it's going to ask you to pick a place where you're going to publish. Click the origin button. Origin is the version that you are allowed to click. Or you are allowed to edit. You'll know it's the version you are allowed to edit because if you look at the username, it's the one that has your name in it, or it's going to be the one that has your group team name in it. Don't click the one that has like our teaching team in it because most likely you don't have access to change it. So if you're going to try to make changes to it, it's not going to let you. So we're going to push this branch up to the remote.

01:40:39 Daniel Chen
Don't worry about this button down here that says pull request. I'm going to talk to you about that in a little bit, but we can go back to our repository, and you can see right here, the week four example. Right now, it doesn't have that set of changes. And the reason why is because we're on the main branch. What we could do is we can look at my first branch. So really think of it as a parallel copy of this particular project. We can look at my first branch, and now if we go to the week four example, that code that I had just written is there. So this is a way again where you can do work by yourself. You can still push or send your changes to GitHub.

01:41:32 Daniel Chen
And if it's work that's not completed yet, that's okay. It still exists somewhere on GitHub. But now you also have this added benefit where if you're working with another teammate or something, or yourself, and you want to look at some code that exists in another branch, you have the ability to do that. So let's say, for example, you're working on something. Or your you find that your teammate's working on something really cool and you want to be able to share it, but it's not necessarily related to their work, and they're going to ask you. Maybe yours they're going to say like, "Oh, how did you do that?" You can actually say like, "Well, it's on this particular branch in this particular file," and they can actually go and see the code that you're working on. Even in theory, they could.

01:42:20 Daniel Chen
Come down here and actually open up the work that you're working on, and then just run your code as if it was on your computer. And again, it's separate from the work that you're working on, right? So that separation is really nice because if everyone's working on like half completed stuff, you don't want all of that coming in because again, the code's not going to be working. So you always want to make sure, or in theory, you want to make sure that the main branch is. Essentially, always in a state where the code should just be working, and all the other stuff, all the other features, all the new stuff that you're working on exists somewhere else, right? So we don't, we haven't really gotten away from this problem. It's really again the same thing that we're dealing with right now, except instead of sending out files that have special names, and instead of sending out zip.

01:43:18 Daniel Chen
Zip files that are all special names of like here's the entire project at this date timestamp on this person's computer, and then trying to sift through all of that stuff on your, in your emails. We've essentially taken all this and just hidden it away in the Git like history system or this branching system, but it's really the same thing as like you still have the same problems working with multiple people as before of Hey, you're working on something. I'm working on something. Sometimes I need to see your work. Sometimes you need to see my work. We're not ready to put everything together yet. We still need to find time to put everything together yet. How do we coordinate all of those efforts? That that type of problem still exists, but we're using Git and GitHub as a way to like synchronize and coordinate all of that work instead of relying on file names and zip files and email and things like that.

01:44:12 Daniel Chen
Right, so hopefully it's just like a slightly better way to share work, especially when it's around code. Why do I say well? Especially when it's around plain text files. Why do I say that? It's because in plain text files, you have a much easier way to like look at differences between things because it's regular text. You can get away with it a little bit with like word documents because word documents under the hood is, Like a zip file, a special zip file of stuff, and so some programs like know how to live unzip it and figure out all the pieces to it. So you'll get away with some, some sometimes like some of the Microsoft files like that. PDFs are things that usually fail because PDFs they're not really images, but you can think of it as like images of picture of of pages, and there's no diff of like hey, you change this line of this figure of this PDF, like what does that look like?

01:45:08 Daniel Chen
So some files you don't really get nice diffs like that. So you'll see a lot of people who end up using Git and GitHub a lot more. They'll slowly start migrating away from all of these tools that have that don't that are not plain text. Okay, so we're going to spend if you if you haven't done it already. We're going to spend a couple of time, a couple of minutes, for everyone to go through this particular process. So, what I want you to do is create a new branch. Doesn't matter what you want to name it. You can call it my first branch. You can call it my name or whatever. And all I want you to do is that open up the re. So, create a new branch. Make sure it says your new branch.

01:46:03 Daniel Chen
And at the top of the README file, you are going to add your name and GitHub username in this portion of the line right here, which said, "This is your working project for S SPH." You're going to create your branch and commit it, make that commit on that branch, and push that branch up to GitHub. Give everyone three minutes to go and do that, and then I'll live demo it.

01:47:01 Daniel Chen
From there, and that feeds into the next portion, which is why I need everyone to have that done.

01:49:12 Daniel Chen
All right, cool. So, if you weren't following with my branch one, make sure you're on the main branch, and then make sure you're on the main branch. If you were doing it and you realize that you weren't on the main branch, if you click it, there is a way to sort of toggle between all of the branches that you currently have. So before, where I was on my first branch. I went back to the main branch by clicking there, just to show you that things are actually changed. That like the actual files are changing. If I'm looking at the main branch here, you'll see that those two code chunks are not there. If I switch to my first branch, you'll see like the file will actually change to that particular version. So again, a really nice way to sort of try something, or when you're assigned a particular track of work.

01:50:06 Daniel Chen
Create a branch first and do your work there, so you don't end up having this weird state of like code that isn't completely finished, and then you're trying to send it to the rest of your team, which might break some of their stuff. Okay, so we're on the main branch here. We're going to create a new branch. I'm going to call this like add name. And the task was go to the README file and then go and add your name and your GitHub username for this particular README. And again, the same cycle. We're going to here's the diff, and that is what we're looking at. That makes sense. One of the things you can do is, I believe you can.

01:50:56 Daniel Chen
Yes, I believe you can tell the model. So I think I can say, yeah, yeah. Don't add that. I can open up another file just to prove what's happening. You can say something like, "I just made a change to repo." Like, can you summarize? So hopefully it will be able to tell us. Yes. Okay. So it's going to make us go through and approve a certain sequence of commands. One of the things that you kind of want to be wary of is if this says.

01:51:53 Daniel Chen
I think restore or reset are the two words that you kind of want to be like. This may or may not delete stuff. So those are the two commands that you want to be mindful of. But git status is essentially telling us what we see here is what we see up here is the git status of the repository. Again, these models don't actually see anything until it's dumped to the actual screen, and so we're going to actually make it. Run that particular command, so it can see what's happening, and you can see when it ran, gets that as short. The output is, hey, the readme file was changed. So it was really trying to essentially see this portion of the user interface, and then it was, oh, only the readme file changed. Let me look at the diff of that particular file, which is what the model needs to run in order to see what happened. So here's the diff of the file in the red and green text.

01:52:51 Daniel Chen
And then now that the model has literally seen the output of everything, it it then can say like, "Hey, you updated a README file to identify the workspace as this instead of yours, right?" So that's exactly what I've done. The model, these the actual LLM, can go and do that, figure that out for us as well. That's also a really nice thing when you are using these AI coding agents. You can have it do some of the work. And like write the code for you, but you can also, when it's done, in a separate turn or in a separate conversation, you can say, "Hey, there was just a bunch of changes that just happened. Can you go and like summarize it back to me so it makes sense to yourself as well?" Right. So you are manually looking at the code. You can ask the actual agent, "Hey, what does this part of the code mean?" Or maybe you're actually asking it to write certain parts of the code.

01:53:49 Daniel Chen
That's totally okay, and then when you're ready to sort of make that commit or submit your changes, nothing stops you from coming back and saying, "Create a new conversation and say, 'What just happened?'" and it will go and look at all the changes of the codebase and then try to summarize that. So again, same, similar thing to what we did last week, where we were using the actual agent on the Copilot agent to help us write code. You can actually help it to explain code to you. You can use it to explain what's happening with your repository, and again, you can see even right now it's really nice when you have these small commits because when it is trying to figure out what is happening, it is running essentially what files have changed, what file like what those changes were, and if you have again ten different tasks across like ten different files.

01:54:48 Daniel Chen
It's fine. It can still give you the update of what those ten things were, but then it's up to you to like read through all of it, and for you to understand ten different things, it's probably a little bit harder for you to figure out what's going on because there's so many things happening at the same time. There's also when there is like a giant wall of text, and the more you use LLMs, or maybe right now you probably do this already, the more Of these like giant AI generated text walls that you get, the easier it is to be like, ah, yeah, I think you're it's fine, and you're just gonna ignore it. Sometimes for projects I don't really care about, that's that's literally what I do. I tell it to do this massive thing, it comes back with this massive thing, and I just like this doesn't really matter, and so I just ignore it. Which probably there there are things in there that actually do matter that I'm completely skipping, but for projects that you're just.

01:55:42 Daniel Chen
Trying this stuff out on your own just to figure out how this stuff works—that's totally fine. If you're trying to do this for an actual data science example on a real dataset to make a report to something to someone, that will actually go and matter. So you do want to make sure that you understand everything that's happening, and using the LLM to help you understand what's happening is totally valid. If you have a sense of what's happening, and then you ask the LLM what's happening, those two things should make sense, and that's again another way you can start checking your work, and it's totally fine to have the LLM to also help you check your work that way. So, we can add this file just like before. We can; it's not going to commit because I don't have a message. So, I'm going to say add my name, commit, and then we're going to go and publish this branch.

01:56:40 Daniel Chen
We're going to publish it to the origin, and then you'll see down here. There's this button for create pull request. You can click it if you want to click it right now. You can totally click it. If it disappears, like like it just did, I'll show you how to not how to get to the same page. So when you get to This particular page, you'll notice that we're on the main branch, so it shouldn't show you those changes that I just did. But I can switch over to add my name or whatever branch name you got, and this is the it shows this particular set of changes. But again, it's really an entire commit, so it's the whole snapshot of the folder. So if I had made multiple changes to multiple files, all of it would have all switched over.

01:57:32 Daniel Chen
To those sets of changes, so the next part is, well, that's great. You just create a whole bunch of branches. Like now we ended up in this from this situation to something like that. How do we like get it back into the main branch? Because again, what we're grading is the actual main branch, right? So, how do we get this stuff merged in? The process for that.

01:58:04 Daniel Chen
I think I think it's easier to draw it here. So right now we we just have one commit, which is totally fine. We are now going to start this process of merging everything together, and that process is called creating a pull request. So if any of you, which I don't think it, I think everyone according to survey was like. No, we have never done this before. If you've worked with Git, or if you see people, if you talk to other people who have worked with Git and GitHub before, you will hear the word branches. And usually, when you hear the word branches, you'll hear the word pull request sort of all together. Pull request is essentially the the interface or the system that you'll see online that will sort of.

01:59:03 Daniel Chen
Allow you to review code or review what's happening, but also merge it all together. So there's a pull request does a couple of things, especially when you are working with other people. It is almost you can think of it as like here's the final, like place where a human can come in and review whatever code is happening. So in this particular class, because all of the code that we're essentially forcing you to write or having you write is AI generated or AI assisted. This is one of the places where you can say, "Hey, here's a human that's like in here trying to review what's happening." And again, that goes into the same idea with why are our commits like fairly small? It's because well, it gives us small chunks to work with, gives us small places to fall back on. You can just see that it'll help the LLM when you're just trying to describe what happened here or what happened in this commit.

02:00:02 Daniel Chen
It'll give it small pieces, but now what's also happening is, you want your branches to be like one, essentially like one feature. It doesn't have to like in this particular class, especially when it's a group project. It doesn't have to be completely, completely done, but you want your branch to be at least like the code works by the end of like your branching part. Like, let's say you're working on cleaning the dataset portion of the group project. You don't have to fully clean it. Data cleaning, pretty much in the real world, never ends. But you should at least, like, when you're ready to combine it and share it with the rest of your team, at the very least, I should be able to run your code and it, and it runs from top to bottom, right? And it maybe generates a new dataset, maybe it doesn't. That's okay. But it should at least just run.

02:00:54 Daniel Chen
So the pull request is reviewing all of that code. It's essentially that that final defense, and what you kind of see is when we were at the main branch, and every time I pushed a new branch, I got like all of these like pop-ups that showed up at the very top, and it kept asking like compare and pull request. Like you see all of these buttons now asking you to do this pull request. Essentially, it's hinting you and forcing you into the same doing the same thing I just talked about. We want everything back into the main branch. Like you're creating branches for a particular reason because it's like work that's not finished yet. But it's going to force you. Like this user interface is pretty much yelling at me around. Like hey, like do you want to like merge it in? Do you want to like go and review it? Yes, yes. Right. So that's what that's what it's doing. You can click this green button. That's that's a green button that you can totally click. I'm going to show you if this green button for whatever reason.

02:01:52 Daniel Chen
Doesn't show up anymore. Like I think the other branch sort of stop stops showing up. You can click on branches. This little button called branches, and you can go to whatever branch name there is. There's little three, uh, three dots, and you can click on new pull request. So this button, those that interface I just showed you, will do exactly the same thing as clicking that green button on that front page. You'll end up on this page.

02:02:25 Daniel Chen
For this particular like in class session, you want to make one change. You want to make sure that this repository says your name on it. Otherwise, you otherwise it's essentially saying, "Hey, I want you to send your changes back to the original like course original template project," which is not what we want. So for your group project, that's why we're asking you not to click the fork button, which is what you've done here. We're having you click the use template button, which I'll show you like after this, and that saves you from this particular step. So you want to make sure that this base branch switch it to the version that says your name on it. If it says anything with someone's username that is not your teammates or your own, then you're.

02:03:18 Daniel Chen
Click it and change it to to that version. So here you're in the pull request view of your particular project. Again, a pull request is essentially like in Bitbucket they call they call them merge requests, and GitLab they also call it merge requests. Essentially, you're combining or merging these two branches together, and you are requesting or Asking someone if you are allowed to go and do this. For the most part, if it's within your own teammate, you'll have another teammate review it. If it's by yourself, it is you requesting permission from yourself to go and review it. If you scroll a little bit down, you'll see the actual diff of everything that has happened in that branch, right? So, this particular branch has one commit. So I see that it's one commit.

02:04:11 Daniel Chen
And here are all the files and everything that has changed in the little diff view that we've seen before. And again, this is starting the process of reviewing it. So when you are submitting code or working on a feature, you should review your own work before you have someone else go and review your work. So before I even create the pull request, this little button says create. It's my job to sort of say, "Hey, does everything in here make sense? Are there files in here that do not belong? Those are things that you can delete and then make sure it's in the ignore file. Did you end up like editing a file that you shouldn't have edited? That's that's something that you might want to go back into your codebase and like discard changes or something like that."

02:05:04 Daniel Chen
One of the other things, especially when you're collaborating with other people, is let's say, for example, you're writing the data cleaning code, and someone else is in charge of writing the actual like prose write-up. As and you notice like a typo, changed like a typo in like their part of the the thing. As as much as like you want to go and fix it, it In this process, it is a much easier thing to do to just tell them, like, "Hey, can you go and fix that when you're working on your section?" Because you might end up colliding, and your work might end up like colliding with one another, and then there's like a whole other interface that happens when you have conflicting changes. So again, much easier to tell the person whose responsibility that part is, and tell them, like, "Hey, can you fix this in your part of the work?" versus.

02:05:58 Daniel Chen
You trying to do like twenty different things in this one pull request. So again, remember try to keep your commits as small as possible. Try to keep your branches only focused on one task. So if my task is cleaning data, that doesn't mean it's like editing prose. Like that should, in theory, be a separate pass of the codebase. Okay. So my my goal right now is to make sure that all the changes in here make sense. This is also another place to say.

02:06:28 Daniel Chen
Are there any files or changes that should exist that don't show up here? Right, because if it's not showing up here, it's not going to be in the main branch. So it's almost as if it never happened. So that's something that you have to go back to your own code base and say, well, why does that file not exist? Is it because I didn't save it? Is it because it's ignored? Etc. Those can all be different reasons why a file doesn't not show up here. Happens to me all the time where. I'm looking at something like what happened to this entirely new file that I just created, and it just ends up being I just didn't save it and commit it, or it's committed, but then I forgot to hit the the sync button, so it's like only on my computer, but it's not on the GitHub side of things. So those are all different reasons why something might not show up here, and that's okay. This is one of the places where you can pause and take a look.

02:07:23 Daniel Chen
To make sure that everything does exist where the word should be. Okay, so scrolling back up, we have a title. Adding my name. You should add a description. So this this a Git and GitHub PR demo. Changing the name. Right. So you should describe what is happening. Right now, as a demo, it's Like this is the actual description. When you are actually doing work, this should have like some type of meaningful amount of, like you should be able to describe what you've done, right? You wouldn't go through all of this to be like, I have no, there's like nothing in here. That's typically not, um, not not really the case on a real project. So again, document what the title is.

02:08:17 Daniel Chen
And document it, this or write a description of like here all the changes that has happened. Um, it doesn't have to be very complicated, especially in this class. Um, it's totally okay if it's something fairly simple. That's like I'm cleaning my dataset, or I'm dropping these rows, or you can have bullet points to sort of document like all the changes that you've made. That's totally okay. Once you're done with that, you're going to click the little green button that says Create Pull Request.

02:08:48 Daniel Chen
And then here is the view, or the the review process starts right here, and this something that you and anyone else on your team will be able to see. If you lose this particular page after you click on pull request, so let's say I go back to my page, my main page here. There's a little tab at the top that says pull request, and this where that title helps with like. Like figuring out like whose change is doing what. So here's my add my name pull request, and you can see I'm back to that back to that same page as before. And this where you can sort of say like you can actually write comments, right? So if you're thinking about like a review process, this what a review looks like.

02:09:45 Daniel Chen
People might have comments around things. They can see all the commits that has happened. If they ask you to make a change, well, you can come back here and go through this whole or go through that whole add cycle and push. And once you re-push on the same branch, this will automatically update. So you don't have to recreate a pull request. You just create it once. As long as you don't delete the branches on both sides, then those two branches are going to be in sync. And then once those two branches are in sync, the pull request will automatically update. So if someone asks you, "Hey, can you like fix this typo in your own pull request?" That doesn't mean delete everything and resubmit. Like you can totally just make your change, add, commit, hit the sync button, and then this will automatically update. The way code review or yeah, the way reviews work is you click on files changed.

02:10:44 Daniel Chen
And again, you see the diff of every file that has happened, and you can see as I am hovering over, you can actually leave comments like, "Oh, right." So you can write comments. You can start a review. Right now, it's. I can even say, "Can you make it such that your username is in the."

02:11:14 Daniel Chen
So I can actually say like, oh, this your name. Can you actually like make this other set of changes? You can look at the conversation page, and all of those comments that happen on the code end up on the files change section, end up in the main conversation thread. Right. So how does code review happen, or how does reviewing happen? This like the last line of a human coming in. Is this is what you're looking at? Like I mentioned, if you make a change to something, all you need to do is repush it, so you can follow. You hopefully you've already clicked through all of the buttons. You can do the same thing. So I had asked, hey, can you make sure that your code, your name, your username shows up in like the the code formatted function? We can come back in here. I can make sure that I'm on the add name branch.

02:12:11 Daniel Chen
We can come back to our file, and I can put the backticks around my actual name, and that will sort of like code color my actual username, which is usually pretty, usually a good habit to follow when you're working with anything that should be copy pasted exactly as is. So I'm going to make a change here. I'm going to say add this around username.

02:12:42 Daniel Chen
I think that should be okay. That shouldn't break anything. I'm going to commit and push those changes. So those, that feature, that cycle that we've been sort of doing in the last three weeks, all of those mechanics have have not changed. When we come back here, all I've done was repush another change to the same branch, and you'll see down here that I get another commit around putting that around my username. Over here, it says like you've modified something that someone has commented on, so it's probably outdated. Depending on like how and when you like refresh the page, things that get outdated will automatically collapse. You'll see that my commits went from one to two, and then the files change portion actually shows like the final version of that that set of changes. Right. So again, if somebody or if you or like oh I just submitted a pull request and there's a mistake and that's like a whole it.

02:13:41 Daniel Chen
It's not it's not that big of a deal that you think it is. You don't have to recreate and go through all of that branching process. You don't have to create a new branch. You can add, commit, and sync just like you have been, and this entire review pull request will update. And usually, when it's outdated, you'll it'll auto collapse like that because there's no point showing you this because you've already made a change to something that. Someone commented on, and assumes that you've addressed that set of changes. So once you're happy, you get this nice little green button down here that says Merge Pull Request, and all you're going to do is click it. Just as like the final example of what's happening, here's our main branch. You can see here I like this part of the text that we've modified is still the original text.

02:14:37 Daniel Chen
If we go back to add name, this now the version of the text with the the back ticks around my name. This the version that exists on that branch. Our goal now is to get this merged into the main branch. To do that, we're going through this pull request system. So I can click on pull request at the top, go back to my pull request. I can review review it if I want to, but once we're all done and happy. Maybe your teammate is happy, or maybe like, maybe you think like, "Hey, this is not a big deal. I'm just gonna go and merge it, not telling what." That I guess that's something that might happen as well. You're gonna click on pull a merge pull request. It's going to ask you to confirm. It's going there's like a lot of buttons you have to click at this point, but you can confirm the merge. And then what that will do is it'll merge that branch into main.

02:15:34 Daniel Chen
You can choose to delete the branch on GitHub if you want. I think it. Yeah, I think in this class we can just leave it. It's totally okay. And now you can go back to the main page of the repository. We're on the main branch, and if we scroll down, you'll see that like that set of changes that I made is now on the main branch. Now we're back to this original view of the actual project, right?

02:16:15 Daniel Chen
Okay. Cool. So there's a section in the the code in the actual textbook. Here's certain things that you can do. The one thing I showed you was, hey, I'm about. Well, I didn't say I'm about to commit these changes, but I wrote like, I have these changes. What have I done? You'll see that you saw that the copilot agent. Was asking you like, hey, can I run these Git commands? And it was trying to figure out what you've done, so then it can tell you what you've done. You again, you can totally ask it something like this, and it should be able to give you a meaningful answer on like what you've done. Again, much easier of an output if your changes are small and your branches are working on small features. Try to think of it like that. Don't just again, don't just try to like.

02:17:12 Daniel Chen
Dump everything into one giant commit or one giant branch because it makes some of the review process a lot more difficult. I think I can show you one example. I'll show you an example later. The other thing you can ask is, hey, can you help me write a commit message? So if you run out of ideas, like I don't know what I've done, or it listed these twenty things. How do I condense this into a commit message? You can totally have it also help you write a commit message, and then copy paste it in. One of the things that I tell my agents to do also is, even in the actual message.

02:18:06 Daniel Chen
Can you begin the message with the robot emoji or the sparkle emoji or something like that? And again, that ends up just signaling like, "Hey, I prompted the AI to do something. I've hopefully you reviewed it, and this is like a commit that has been mostly been handled by the AI or the LLM. And that's just again a hint to myself that here's like. Either like a really boring task that just happened, like can you help me rename a whole bunch of stuff, or it's something that if you're reviewing stuff, like in if if something goes wrong in your reviewing stuff and you're mixing like work that you've written by hand with work that you're that you've had with the LLM, it can help at least figure out like where the problem potentially came from. And then again, just like last week.

02:19:07 Daniel Chen
I guess you can tell it to to help you paste in errors, and it can help you with what buttons to click. I would just be a little bit careful when it. VS Code is pretty good, or Copilot and VS Code is pretty good together because they're both very like popular tools. But sometimes, don't be surprised if it tells you like here's the sequence of buttons to click, and those buttons don't exist, or they're not exactly the way that it describes. You can always Follow up and be like, this button doesn't exist. Where, where is it? That has happened to me in the past before as well. But again, you can totally ask it. Like, here's the error message. What is happening? This line down here is probably more similar to how you've been, how you have been using these tools already, which is, here's the web interface. Here's the problem. Help me like go through it. These other ways, again.

02:20:04 Daniel Chen
It's different from how you're interacting with ChatGPT or Claude on the web interface because it's actually able to run code. It's actually able to run commands. Those commands can see the actual code base that you're working on, and then tell you something really specific about your actual code base, which is really different from here's the web interface without you just pasting everything in, and it can actually go and execute code in that environment as well, which again is very different from you just opening up ChatGPT in the desktop or the web interface. So the next thing I want folks to do is you're going to go on Canvas. You're going to click on the People tab, and you are going to create groups.

02:21:02 Daniel Chen
So on people, there's a tab up here called group project, and I'm assuming over the last couple of weeks you've been sitting with people that you might have had a conversation with already. Go and create. You can drag your name into a group. We'll spend about the bottom of the hour to get everyone's group set up. If you don't have a group, that's okay. You can either randomly drag yourself into one if you want, and if not, I'm just going to drag you into a group by the bottom of the hour if you haven't assigned it. That also accounts for people who aren't in class. We'll do that first. We'll get all the groups set up. You should sit with your group, or sort of sit with them as they get formed, and then we'll sort of go to.

02:21:54 Daniel Chen
Through together to get the first get everyone added for the group project assignment because you have to add people so you can actually make those changes for the actual homework assignment. So go to people, click on the group project tab, and drag your name somewhere. And I'm going to move the thing over to the side so people don't feel publicly.

02:22:25 Daniel Chen
You don't see me dragging names across the groups, right? Move your names across and then start sitting together with folks.

02:22:47 Daniel Chen
It's four per group, and I think it's capped at four per group.

02:22:55 Daniel Chen
I think there's like maybe two groups can have three people, and that's about.

02:23:00 Speaker 1
It.

02:24:03 Speaker 1
八零三。

02:24:39 Speaker 1
But still, it's like, sorry. So it's about, and I, I'm like, just sit there and stare. Yeah. That's brutal. I don't usually take pictures.

02:25:22 Daniel Chen
Has Everyone found a group? Yeah. I'm assuming the other six people are just not in this class. Okay.

02:25:40 Daniel Chen
So who's um who's in group seven? Who's the one person in group seven right now? J A S, is that anyone? J A S, you okay? That that's interesting. Hopefully they just stepped away. Did you find a group? You found a group. Okay. Did did you find a group? There's there's two of you. Which group number are you? Which you're in five. Which group number are you? Are you? You're in four. Okay, you're full. Okay, you're in group five. Okay. Is anyone sitting here in a group of one right now? Okay. Someone added themselves.

02:26:40 Daniel Chen
Into a group of one. Okay. All right. Are we are we good? Are we good? All right.

02:27:01 Speaker 1
Doink. Doink. Doink.

02:27:10 Speaker 1
All right. Okay. All right.

02:27:28 Daniel Chen
Cool. Okay.

02:27:38 Daniel Chen
Everyone's got a group. Everyone's got a group. According to my view, everyone's got a group. Okay. Is everyone here? I don't even know if everyone's here. Because I said bottom of the hour. I should. I should wait two minutes. Okay. Okay. Um. Since we're kind of waiting, because I said bottom of the hour, the I had set up Canvas to set it up where like I think it was like the first person or random person ends up being like quote unquote the group leader. All this does is the next set of instructions that I'm going to give you. This person, whoever is listed, you that's what you will be doing, and then everyone else will get added to the project, right? So not all four people are going to have.

02:28:37 Daniel Chen
Four copies of the group assignment. You have one copy, so all this doing is this the person making the first copy, and then everyone else works on that copy. Okay, so you can total. Everyone else could totally do the thing. Just don't submit it as your homework assignment, and don't confuse the rest of your group that like this my copy of the group assignment. Like, don't do that. But but this like whoever is listed here. We will go through the next sequence of steps together in about right now. So hopefully everyone's here. Okay. So whoever's listed, you are the the group leader. That's how Canvas has called it. You are going to make the copy of the group project, and then you're going to add everyone else, including like me and the TA, to your actual group project.

02:29:36 Daniel Chen
And the reason for for adding me and TA so like we can actually see your actual homework assignment, assuming you want it to be private is sort of my guess. Okay, so what you are going to do is in our. Hold on for a sec. It's one of these buttons. Okay. Yeah. Did I? Yes. One of the links I just sent out to everyone in Canvas. Hold on. Okay, is this link that says HDX Project Template? That is the actual project template that we are all going to start from. You can see that I had the AI use the robot emoji to.

02:30:29 Daniel Chen
Hopefully fix the code spaces thing, but we'll see. Hopefully, I definitely know that the images will render, but hopefully the render button will also render and preview stuff properly. But what you are going to do, and by you I mean like whoever is listed here, are going to do is there is this button here called Use this template. You are going to use this template to create a new repository.

02:31:04 Daniel Chen
And I don't think you need all the branches. That's correct. Here's the base template repository that has pretty much the skeleton for the course project that you'll be working on. The owner is going to be the GitHub username for whoever is listed here, and you can call it essentially whatever you want. But I I think we tell you what to call it.

02:31:35 Daniel Chen
Do we tell you what to call this thing.

02:31:47 Daniel Chen
No, we don't tell you what to call it. Okay, so I'm going to call this SPPH three five one H. Project, right? So, call it some. Ideally, you call it something with the actual course name in it, and then whatever you want to call it, you can change it later. You can call it the actual dataset you end up working with, the analysis type that you're working with. You can give your team a name, and you can give your you can just name it like team whatever. That's totally okay. You can leave the description blank. Visibility up to you. You can choose it to be public.

02:32:29 Daniel Chen
But I know most people like don't want to share. If you're not used to it, most people don't want all of their work completely public. So you can choose it to be private. But again, you would have to make sure that me and the TA our usernames are are added. And at the bottom, all you're going to do is create repository. And what that will do is copy over everything from that template into, oops, into. Repository. So right now you see like here's my username and here's the project name that I copied from. Hopefully whoever's username here is whoever is listed here. The next thing you're going to do is you're going to click on settings. You're going to click on collaborators, and you're going to.

02:33:23 Speaker 1
Log in.

02:33:35 Daniel Chen
And you're going to click on Add People, and then here is where you add all of the other usernames from your teammates. So I have, like, my other teaching account that I use to demo a bunch of things. So I'm going to add that teaching account in there. What ends up happening is for everyone else. Oh yeah, okay, that's why.

02:34:06 Daniel Chen
For everyone else, damn it! I don't even know what email address that is. What email address is that? Okay. For everyone else, you will end up. Getting an email, and you'll end up on this site where you can go and accept the invitation. It's really important you actually accept it because you can't actually make changes if you don't accept it. So once that is done, you should see everyone's username listed here. The other thing that I will type for you.

02:35:02 Daniel Chen
Is please add me and our TA and I will find I will find our TAs. Give me one second.

02:35:44 Daniel Chen
So we'll spend about ten minutes to make sure everyone has all of their accounts all set up. And if you have any questions, just raise your hand and let me know. Because I know that was a bunch of stuff that I can't re-demo. The most important thing is it comes from this HDSX template project template repository. Click on use this template. What you don't want to click is the fork button, which is what you've done for your individual homework assignments. You click the fork button, but for this template, click on use template.

02:36:37 Daniel Chen
And then go through that process again. If you're sitting next to someone in your group right now, only one person in the group is supposed to be doing this portion. Once you are in the actual project, you click on settings, and then collaborators is what you'll click on to add the rest of your team. Don't forget to add two more people to your group. Everyone should have either six or five people listed in their actual repository.

02:37:36 Speaker 1
So the template is on regular GitHub that works. This is the one. There's another one called Project.

02:38:08 Speaker 1
Just we just together.

02:38:41 Speaker 1
You can change. You can't. That's that's correct.

02:39:40 Speaker 1
Yeah.

02:40:09 Speaker 4
I don't watch so. I do more than.

02:40:15 Speaker 1
Count on your fingers. Sure. Once again, he is a white Christian male. Do you privileges your kind of house? So that he teaches may make him cry, and that you should be ready for that. So you can also. I was like, oh my goodness. Yeah. So far, he's really good at teaching it. Yeah, I think. I think so far we we're doing. Um, and we started off like this. Yeah.

02:41:09 Speaker 1
The bracket stuff is quit because that's what he does.

02:42:09 Speaker 1
No, I. Yeah. What you said? But like nothing like nothing stops. There's almost no reason. Like I don't have.

02:43:11 Speaker 1
You do actually. Oh, I know I would be lost. No, you. I'm stupid. Yes. I think it just. Here, like. Yeah. Oh, yes.

02:44:20 Daniel Chen
All Right. There's one last demo. You can the the only last demo to check before. Sorry, I guess I should have like waited, or just done this early. the The only last thing you should be everyone should be able to do is when you click on code, you should be able to now open up your group project as a new code base, code space. That that was the last thing. So if you need to leave, you can totally leave. But yeah, so now this code space, when you add, push, and do all your stuff, is now in that collaborative environment now, which is again the same thing as your individual assignments you've been doing the last couple weeks, except now everyone else can also see that same body of work. So click on that. If you have any problems, you can stick around, and then if not, I'll be.

02:45:06 Daniel Chen
After class, I'll be. If you take the elevator to the third floor, I'll be right in front of the elevator. That's where I'm sitting for office hours. All right.

02:45:13 Speaker 1
Cool.

02:45:43 Speaker 1
I'm sorry. I'm going to.

02:46:18 Daniel Chen
He will. I will receive it. He will receive it. So you're going to create new ones.

02:46:23 Speaker 4
I said that. It doesn't come with it. I'm still one of the top.

02:46:27 Speaker 1
I don't know nothing. I'm just trying to get to the before.

02:46:42 Speaker 4
It's like I don't know, like it's weird, like safety one and one, you know? Yeah. And I'm like, I understand. Yeah. Well, there's two places to train yourself. Let me do that.

02:46:54 Speaker 1
You can of course, the library. You can have more power. I'm only late for this month and a half.

02:47:14 Daniel Chen
I'm only on campus, so it's like even I'm only teaching this class right now, and I'm teaching the class. So, yeah. Just message me. We could just okay. So, so click this, and then the other. So this is going to run out, but that's because.

02:47:41 Daniel Chen
So we want to be the swimmer. That should say this. That should say base, and then that should be good. I think there's another class right after. So, yep.

02:47:57 Speaker 1
I know this from last week. I came in late and I just got totally lost throughout the whole. Oh, okay. First one. Yep. So. I know they. Is it like eight thousand? I just couldn't find that.

02:48:16 Daniel Chen
That part I would say. Hold on, let me just.
