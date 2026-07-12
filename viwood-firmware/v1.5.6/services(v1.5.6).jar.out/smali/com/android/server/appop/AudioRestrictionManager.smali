.class public Lcom/android/server/appop/AudioRestrictionManager;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# static fields
.field public static final CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;


# instance fields
.field public mCameraAudioRestriction:I

.field public final mZenModeAudioRestrictions:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 45
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 46
    sget-object v2, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v3, :cond_3

    aget v6, v2, v4

    .line 47
    sget-object v7, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    const/4 v9, 0x4

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x5

    if-eq v7, v6, :cond_2

    const/4 v6, 0x6

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_2

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown audio suppression behavior"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioRestriction"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 52
    invoke-virtual {v1, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    const/16 v3, 0x1c

    .line 60
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    return-void
.end method

.method public static cameraRestrictionModeToName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 192
    const-string p0, "Unknown"

    return-object p0

    .line 190
    :cond_0
    const-string p0, "MuteVibrationAndSound"

    return-object p0

    .line 188
    :cond_1
    const-string p0, "MuteVibration"

    return-object p0

    .line 186
    :cond_2
    const-string p0, "None"

    return-object p0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 3

    .line 71
    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    sget-object v0, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 80
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkZenModeRestrictionLocked(IIILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    monitor-exit p0

    return p1

    .line 90
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final checkZenModeRestrictionLocked(IIILjava/lang/String;)I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz p0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)Z
    .locals 10

    .line 150
    invoke-virtual {p0}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v0

    .line 152
    monitor-enter p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 153
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    iget-object v5, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v1

    .line 156
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    if-nez v3, :cond_0

    .line 158
    const-string v3, "  Zen Mode Audio Restrictions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 162
    :cond_0
    :goto_2
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 163
    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    const-string v8, " usage="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 166
    const-string v8, ": mode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    iget-object v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 168
    const-string v8, "      Exceptions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v8, v1

    .line 169
    :goto_3
    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 170
    const-string v9, "        "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 175
    :cond_3
    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v1, :cond_4

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Camera Audio Restriction Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 177
    invoke-static {v2}, Lcom/android/server/appop/AudioRestrictionManager;->cameraRestrictionModeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    :cond_4
    monitor-exit p0

    return v0

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasActiveRestrictions()Z
    .locals 1

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 143
    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCameraAudioRestriction(I)V
    .locals 0

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setZenModeAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 3

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object p3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_0

    .line 110
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_3

    .line 115
    new-instance p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>(Lcom/android/server/appop/AudioRestrictionManager-IA;)V

    .line 116
    iput p4, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    if-eqz p5, :cond_2

    .line 118
    array-length p4, p5

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_2

    .line 121
    aget-object v1, p5, v0

    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
