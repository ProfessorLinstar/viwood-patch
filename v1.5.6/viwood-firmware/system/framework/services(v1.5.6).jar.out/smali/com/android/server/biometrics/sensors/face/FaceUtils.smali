.class public Lcom/android/server/biometrics/sensors/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# static fields
.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    .line 85
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 3

    .line 58
    sget-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "settings_face_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_1
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    :cond_2
    sget-object p1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 69
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 1

    .line 80
    const-string/jumbo v0, "settings_face.xml"

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 0

    .line 33
    check-cast p3, Landroid/hardware/face/Face;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method

.method public deleteStateForUser(I)V
    .locals 1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->deleteBiometricFile()V

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;
    .locals 2

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/face/FaceUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 150
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 151
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasValidBiometricUserState(Landroid/content/Context;I)Z
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidBiometricState()Z

    move-result p0

    return p0
.end method

.method public isInvalidationInProgress(Landroid/content/Context;I)Z
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isInvalidationInProgress()Z

    move-result p0

    return p0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    return-void
.end method

.method public setInvalidationInProgress(Landroid/content/Context;IZ)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->setInvalidationInProgress(Z)V

    return-void
.end method
