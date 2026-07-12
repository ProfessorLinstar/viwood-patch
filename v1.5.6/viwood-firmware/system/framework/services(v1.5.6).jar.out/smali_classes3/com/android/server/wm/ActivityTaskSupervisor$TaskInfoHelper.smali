.class public Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mInfo:Landroid/app/TaskInfo;

.field public mTopRunning:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 3065
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_APP_TO_WEB:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iget-object v0, v0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 3067
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->setCapturedLink(Lcom/android/server/wm/ActivityRecord;)V

    .line 3069
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 3070
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    invoke-virtual {v1, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 3072
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3075
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iget v1, v0, Landroid/app/TaskInfo;->numActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/TaskInfo;->numActivities:I

    .line 3076
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3077
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_3

    .line 3078
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 3046
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->accept(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public fillAndReturnTop(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    const/4 v0, 0x0

    .line 3051
    iput v0, p2, Landroid/app/TaskInfo;->numActivities:I

    const/4 v0, 0x0

    .line 3052
    iput-object v0, p2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3053
    iput-object v0, p2, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    .line 3054
    iput-wide v1, p2, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    .line 3055
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    .line 3056
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3057
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 3058
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 3059
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    return-object p1
.end method

.method public final setCapturedLink(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 3083
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3084
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3085
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3088
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    iput-object v0, p0, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    .line 3089
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    iput-wide v0, p0, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    :cond_1
    :goto_0
    return-void
.end method
