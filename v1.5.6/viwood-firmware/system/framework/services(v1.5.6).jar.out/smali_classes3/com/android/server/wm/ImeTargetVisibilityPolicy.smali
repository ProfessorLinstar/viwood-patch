.class public abstract Lcom/android/server/wm/ImeTargetVisibilityPolicy;
.super Ljava/lang/Object;
.source "ImeTargetVisibilityPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canComputeImeParent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/wm/ImeTargetVisibilityPolicy;->shouldComputeImeParentForEmbeddedActivity(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 80
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eq p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move p0, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p0, v2

    :goto_3
    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    move v0, v2

    :cond_6
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static shouldComputeImeParentForEmbeddedActivity(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InputTarget;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-eq p1, v2, :cond_3

    .line 120
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract removeImeScreenshot(I)Z
.end method

.method public abstract showImeScreenshot(Landroid/os/IBinder;I)Z
.end method
