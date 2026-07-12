.class public Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"


# instance fields
.field public mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mErrorCallbackToken:Landroid/os/IBinder;

.field public final mEventType:I

.field public mException:Ljava/lang/Throwable;

.field public mOpType:I

.field public mOtherActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTask:Lcom/android/server/wm/Task;

.field public mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

.field public mTaskFragmentToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    .line 1106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
    .locals 12

    .line 1150
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    iget v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mEventType:I

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTask:Lcom/android/server/wm/Task;

    iget v10, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskFragmentOrganizerController-IA;)V

    return-object v0
.end method

.method public setActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setException(Ljava/lang/Throwable;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public setOpType(I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1145
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOpType:I

    return-object p0
.end method

.method public setOtherActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public setTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public setTaskFragmentToken(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent$Builder;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method
