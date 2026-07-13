.class public final Lcom/android/server/notification/GroupHelper$CachedSummary;
.super Ljava/lang/Record;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "id",
        "tag",
        "originalGroupKey",
        "key",
        "deleteIntent"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Landroid/app/PendingIntent;
    }
.end annotation


# instance fields
.field public final deleteIntent:Landroid/app/PendingIntent;

.field public final id:I

.field public final key:Ljava/lang/String;

.field public final originalGroupKey:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 2035
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

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
    .locals 6

    .line 0
    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 2035
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 2035
    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/notification/GroupHelper$CachedSummary$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2035
    invoke-virtual {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/notification/GroupHelper$CachedSummary;

    const-string v1, "id;tag;originalGroupKey;key;deleteIntent"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
