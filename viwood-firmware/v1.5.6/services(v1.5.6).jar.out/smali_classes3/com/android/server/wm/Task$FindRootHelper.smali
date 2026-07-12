.class public Lcom/android/server/wm/Task$FindRootHelper;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mIgnoreRelinquishIdentity:Z

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mSetToBottomIfNone:Z

.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;)V

    return-void
.end method


# virtual methods
.method public findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    .line 557
    iput-boolean p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    .line 558
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 559
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 p2, 0x0

    .line 560
    iput-object p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    if-eqz v0, :cond_0

    .line 569
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 572
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 576
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 580
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    if-nez v3, :cond_6

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_5

    .line 583
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 590
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return v1

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 550
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$FindRootHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
