.class public Lcom/android/server/audio/InputDeviceVolumeHelper;
.super Ljava/lang/Object;
.source "InputDeviceVolumeHelper.java"


# instance fields
.field public final INDEX_DEFAULT:I

.field public final INDEX_MAX:I

.field public final INDEX_MIN:I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mInputGainIndexMap:Landroid/util/SparseIntArray;

.field public final mInputGainIndexSettingsName:Ljava/lang/String;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSupportedDeviceTypes:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SettingsAdapter;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_MIN:I

    const/16 v1, 0x64

    .line 41
    iput v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_MAX:I

    const/16 v1, 0x32

    .line 42
    iput v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_DEFAULT:I

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 58
    iput-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    iput-object p3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    .line 61
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    const/4 p2, 0x1

    .line 62
    invoke-static {p2, p1}, Landroid/media/AudioSystem;->getSupportedDeviceTypes(ILandroid/util/IntArray;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSystem.getSupportedDeviceTypes(GET_DEVICES_INPUTS) failed. status:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InputDeviceVolumeHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 72
    iget-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->readSettings()V

    return-void
.end method


# virtual methods
.method public final ensureValidInputDeviceType(I)V
    .locals 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->isValidInputDeviceType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad input device type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I
    .locals 2

    .line 117
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    .line 120
    const-class v0, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxInputGainIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x64

    return p0
.end method

.method public getMinInputGainIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSettingNameForDevice(I)Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    return-object p0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValidIndex(I)I
    .locals 0

    .line 0
    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x64

    if-le p1, p0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z
    .locals 0

    .line 134
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result p1

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public isValidInputDeviceType(I)Z
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public persistInputGainIndex(Landroid/media/AudioDeviceAttributes;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result p1

    .line 165
    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public final readSettings()V
    .locals 8

    .line 79
    const-class v0, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    if-nez v3, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v6, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getValidIndex(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 91
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)Z
    .locals 2

    .line 143
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    .line 147
    const-class v1, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result p1

    .line 149
    invoke-virtual {p0, p2}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getValidIndex(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    .line 152
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    .line 156
    monitor-exit v1

    return p0

    .line 157
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
