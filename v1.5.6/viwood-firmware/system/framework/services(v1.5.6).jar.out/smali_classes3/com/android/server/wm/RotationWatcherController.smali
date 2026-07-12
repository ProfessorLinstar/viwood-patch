.class public Lcom/android/server/wm/RotationWatcherController;
.super Ljava/lang/Object;
.source "RotationWatcherController.java"


# instance fields
.field public final mDisplayRotationWatchers:Ljava/util/ArrayList;

.field public volatile mHasProposedRotationListeners:Z

.field public final mProposedRotationListeners:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static register(Landroid/os/IBinder;Lcom/android/server/wm/RotationWatcherController$RotationWatcher;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 79
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static unregister(Landroid/view/IRotationWatcher;Ljava/util/ArrayList;)Z
    .locals 4

    .line 87
    invoke-interface {p0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;

    .line 90
    iget-object v3, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v3}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq p0, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    invoke-virtual {v2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->unlinkToDeath()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispatchDisplayRotationChange(II)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    .line 114
    iget v2, v1, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    if-ne v2, p1, :cond_0

    .line 115
    invoke-virtual {v1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->notifyRotation(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchProposedRotation(Lcom/android/server/wm/DisplayContent;I)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 124
    iget-object v2, v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RotationWatcherController;->getAssociatedWindowContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v2, p1, :cond_1

    .line 127
    invoke-virtual {v1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->notifyRotation(I)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    .line 133
    invoke-virtual {v1}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->unlinkToDeath()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x5d

    const-string v2, "->"

    const/16 v3, 0x20

    if-nez v0, :cond_1

    .line 152
    const-string v0, "  mDisplayRotationWatchers: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 154
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 155
    iget-object v4, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    .line 156
    iget v5, v4, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mOwnerUid:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 157
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 158
    iget v4, v4, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 163
    const-string v0, "  mProposedRotationListeners: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 165
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 166
    iget-object v4, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 167
    iget v5, v4, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mOwnerUid:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 168
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v4, v4, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/RotationWatcherController;->getAssociatedWindowContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    :cond_3
    return-void
.end method

.method public getAssociatedWindowContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 143
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController;->getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public hasProposedRotationListeners()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    return p0
.end method

.method public registerDisplayRotationWatcher(Landroid/view/IRotationWatcher;I)V
    .locals 3

    .line 50
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 52
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Registering existed rotation watcher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V

    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/RotationWatcherController;->register(Landroid/os/IBinder;Lcom/android/server/wm/RotationWatcherController$RotationWatcher;Ljava/util/ArrayList;)V

    return-void
.end method

.method public registerProposedRotationListener(Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V
    .locals 4

    .line 61
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    .line 64
    iget-object v3, v2, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    if-eq p2, v3, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Register rotation listener to a registered token, uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_2
    new-instance v1, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;

    iget-object v2, p0, Lcom/android/server/wm/RotationWatcherController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/RotationWatcherController;->register(Landroid/os/IBinder;Lcom/android/server/wm/RotationWatcherController$RotationWatcher;Ljava/util/ArrayList;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    return-void
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wm/RotationWatcherController;->unregister(Landroid/view/IRotationWatcher;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/server/wm/RotationWatcherController;->mProposedRotationListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/RotationWatcherController;->mHasProposedRotationListeners:Z

    return-void

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/android/server/wm/RotationWatcherController;->unregister(Landroid/view/IRotationWatcher;Ljava/util/ArrayList;)Z

    return-void
.end method
