.class public Lcom/android/server/uri/UriGrantsManagerService$1;
.super Lcom/android/server/uri/UriGrantsManagerService;
.source "UriGrantsManagerService.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/android/server/uri/UriGrantsManagerService-IA;)V

    return-void
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method
