.class public final Lcom/android/server/apphibernation/GlobalLevelHibernationProto;
.super Ljava/lang/Object;
.source "GlobalLevelHibernationProto.java"

# interfaces
.implements Lcom/android/server/apphibernation/ProtoReadWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;->readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 7

    .line 52
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 54
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/server/apphibernation/GlobalLevelState;

    invoke-direct {v0}, Lcom/android/server/apphibernation/GlobalLevelState;-><init>()V

    const-wide v3, 0x20b00000001L

    .line 59
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 60
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 61
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    if-eq v5, v2, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined field in proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlobalLevelHibernationProtoReadWriter"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-wide v5, 0x10300000003L

    .line 72
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    goto :goto_1

    :cond_2
    const-wide v5, 0x10800000002L

    .line 68
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    goto :goto_1

    :cond_3
    const-wide v5, 0x10900000001L

    .line 64
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 79
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public bridge synthetic writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/apphibernation/GlobalLevelHibernationProto;->writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .locals 8

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const-wide v1, 0x20b00000001L

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 41
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 42
    iget-object v4, v3, Lcom/android/server/apphibernation/GlobalLevelState;->packageName:Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10800000002L

    .line 43
    iget-boolean v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000003L

    .line 44
    iget-wide v6, v3, Lcom/android/server/apphibernation/GlobalLevelState;->savedByte:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
