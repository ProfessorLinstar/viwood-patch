.class public Lcom/android/server/display/BrightnessSetting;
.super Ljava/lang/Object;
.source "BrightnessSetting.java"


# instance fields
.field public mBrightness:F

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mUserSerial:I


# direct methods
.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/display/BrightnessSetting;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessSetting;->notifyListeners(F)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/server/display/BrightnessSetting$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessSetting$1;-><init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 64
    iput-object p2, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 65
    iput-object p3, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 66
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    .line 68
    invoke-virtual {p3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object p3

    .line 67
    invoke-virtual {p2, p3, p1}, Lcom/android/server/display/PersistentDataStore;->getBrightness(Lcom/android/server/display/DisplayDevice;I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 69
    iput-object p4, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 79
    :try_start_0
    iget p0, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBrightnessNitsForDefaultDisplay()F
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->getBrightnessNitsForDefaultDisplay()F

    move-result p0

    return p0
.end method

.method public final notifyListeners(F)V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 178
    invoke-interface {v0, p1}, Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;->onBrightnessChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "BrightnessSetting"

    const-string v1, "Duplicate Listener added"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveIfNeeded()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void
.end method

.method public setBrightness(F)V
    .locals 4

    .line 112
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string p0, "BrightnessSetting"

    const-string p1, "Attempting to set invalid brightness"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 121
    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 127
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 128
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 129
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBrightnessNitsForDefaultDisplay(F)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore;->setBrightnessNitsForDefaultDisplay(F)Z

    return-void
.end method

.method public setBrightnessNoNotify(F)V
    .locals 4

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string p0, "BrightnessSetting"

    const-string p1, "Attempting to init invalid brightness"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 143
    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    .line 149
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUserSerial(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    return-void
.end method

.method public unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
