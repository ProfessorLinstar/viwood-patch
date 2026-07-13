.class public Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
.super Ljava/lang/Object;
.source "BiometricContextSessionInfo.java"


# instance fields
.field public final mId:Lcom/android/internal/logging/InstanceId;

.field public final mOrder:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    return p0
.end method

.method public getOrderAndIncrement()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[sid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
