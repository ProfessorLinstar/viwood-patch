.class public Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# instance fields
.field public mActiveFileData:[B

.field public mNewData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 141
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 152
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    return-void
.end method

.method public reset()V
    .locals 0

    .line 0
    return-void
.end method

.method public shouldWrite()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 163
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
