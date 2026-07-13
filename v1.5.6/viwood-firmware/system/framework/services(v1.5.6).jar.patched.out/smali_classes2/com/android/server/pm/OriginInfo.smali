.class public final Lcom/android/server/pm/OriginInfo;
.super Ljava/lang/Object;
.source "OriginInfo.java"


# instance fields
.field public final mExisting:Z

.field public final mFile:Ljava/io/File;

.field public final mResolvedFile:Ljava/io/File;

.field public final mResolvedPath:Ljava/lang/String;

.field public final mStaged:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 57
    iput-boolean p2, p0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    .line 58
    iput-boolean p3, p0, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    return-void
.end method

.method public static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .locals 3

    .line 48
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method public static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;
    .locals 3

    .line 52
    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method
