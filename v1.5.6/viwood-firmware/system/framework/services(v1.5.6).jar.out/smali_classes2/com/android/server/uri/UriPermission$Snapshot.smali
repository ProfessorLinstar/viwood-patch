.class public Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# instance fields
.field public final persistedCreateTime:J

.field public final persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    .line 391
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 393
    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 394
    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    .line 395
    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method
