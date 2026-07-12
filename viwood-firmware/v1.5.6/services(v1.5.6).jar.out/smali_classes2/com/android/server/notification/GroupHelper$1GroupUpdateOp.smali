.class public final Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;
.super Ljava/lang/Record;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "groupKey",
        "record",
        "hasSummary"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;,
        Lcom/android/server/notification/NotificationRecord;,
        Z
    }
.end annotation


# instance fields
.field public final groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

.field public final hasSummary:Z

.field public final record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public static bridge synthetic -$$Nest$fgethasSummary(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 1399
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iput-boolean p3, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-boolean v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-boolean p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1399
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1399
    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, v1, p0}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp$$ExternalSyntheticRecord0;->m(ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1399
    invoke-virtual {p0}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    const-string v1, "groupKey;record;hasSummary"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
