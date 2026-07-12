.class public Lcom/android/server/wm/AppCompatDeviceStateQuery;
.super Ljava/lang/Object;
.source "AppCompatDeviceStateQuery.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public isDisplayFullScreenAndInPosture(Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    sget-object v1, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayRotation;->isDeviceInPosture(Lcom/android/server/wm/DeviceStateController$DeviceState;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisplayFullScreenAndSeparatingHinge()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDeviceStateQuery;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isDisplaySeparatingHinge()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
