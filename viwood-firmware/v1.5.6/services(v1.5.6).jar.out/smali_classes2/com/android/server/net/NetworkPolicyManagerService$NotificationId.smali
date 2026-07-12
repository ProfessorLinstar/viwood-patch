.class public Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# instance fields
.field public final mId:I

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicy;I)V
    .locals 0

    .line 7069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7070
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 7071
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return-void
.end method

.method public static buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2

    .line 7092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 7077
    :cond_0
    instance-of v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 7078
    :cond_1
    check-cast p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 7079
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 7100
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mId:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 7096
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 7084
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 7105
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->mTag:Ljava/lang/String;

    return-object p0
.end method
