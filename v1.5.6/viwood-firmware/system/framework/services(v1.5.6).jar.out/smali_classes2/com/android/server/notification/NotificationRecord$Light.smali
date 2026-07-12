.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1795
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1796
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 1797
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/notification/NotificationRecord$Light;

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 1805
    :cond_1
    check-cast p1, Lcom/android/server/notification/NotificationRecord$Light;

    .line 1807
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1808
    :cond_2
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1809
    :cond_3
    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget p1, p1, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1815
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1816
    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1817
    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
