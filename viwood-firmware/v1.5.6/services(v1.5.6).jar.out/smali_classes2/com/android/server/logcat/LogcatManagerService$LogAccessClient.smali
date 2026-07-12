.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    .line 123
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 129
    :cond_0
    instance-of v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 130
    :cond_1
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 131
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogAccessClient{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
