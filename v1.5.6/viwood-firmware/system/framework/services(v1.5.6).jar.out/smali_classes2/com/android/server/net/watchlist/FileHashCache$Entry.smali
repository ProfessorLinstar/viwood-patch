.class public Lcom/android/server/net/watchlist/FileHashCache$Entry;
.super Ljava/lang/Object;
.source "FileHashCache.java"


# instance fields
.field public final mLastModified:J

.field public final mSha256Hash:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    .line 76
    iput-object p3, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    return-void
.end method
