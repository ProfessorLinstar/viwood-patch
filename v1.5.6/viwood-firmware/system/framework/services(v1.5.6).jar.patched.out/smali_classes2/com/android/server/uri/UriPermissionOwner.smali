.class public Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# instance fields
.field public externalToken:Landroid/os/Binder;

.field public final mOwner:Ljava/lang/Object;

.field public mReadPerms:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mWritePerms:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 54
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    return-void
.end method

.method public static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .locals 1

    .line 65
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    .line 66
    check-cast p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    const-string/jumbo p2, "writeUriPermissions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 190
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 194
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 195
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 199
    iget-object v1, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 204
    iget-object v1, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    .line 207
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    .line 207
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getExternalToken()Landroid/os/Binder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object p0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 164
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

.method public removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V

    return-void
.end method

.method public removeUriPermission(Lcom/android/server/uri/GrantUri;ILjava/lang/String;I)V
    .locals 6

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    monitor-enter p0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_0

    .line 91
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v5}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    if-eqz p3, :cond_1

    .line 94
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq p4, v3, :cond_2

    .line 97
    iget v5, v4, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v5, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v4, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    :cond_4
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    .line 109
    iget-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz p2, :cond_9

    .line 110
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 111
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 112
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_5

    .line 113
    iget-object v4, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v4}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 116
    iget-object v4, v1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    if-eq p4, v3, :cond_7

    .line 119
    iget v4, v1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-eq p4, v4, :cond_7

    goto :goto_1

    .line 122
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v1, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 124
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 126
    :cond_8
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 127
    iput-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 130
    :cond_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_a

    .line 134
    iget-object p3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/uri/UriPermission;

    invoke-interface {p3, p4}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    return-void

    .line 130
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeUriPermissions()V
    .locals 1

    const/4 v0, 0x3

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    return-void
.end method

.method public removeUriPermissions(I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 175
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

.method public toString()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
