.class public Lcom/android/server/notification/GroupHelper$NotificationAttributes;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# instance fields
.field public final channelId:Ljava/lang/String;

.field public final flags:I

.field public final groupAlertBehavior:I

.field public final icon:Landroid/graphics/drawable/Icon;

.field public final iconColor:I

.field public final visibility:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V
    .locals 0

    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2048
    iput p1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 2049
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 2050
    iput p3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 2051
    iput p4, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 2052
    iput p5, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 2053
    iput-object p6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2070
    :cond_0
    instance-of v1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 2073
    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iget v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iget v3, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 2076
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 2081
    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationAttributes: flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " groupAlertBehavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
