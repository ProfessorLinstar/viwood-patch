.class public Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public mMaxCn0:I

.field public mMeanCn0:I

.field public mSvCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 2

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    return-void
.end method

.method public set(III)V
    .locals 0

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 209
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 210
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 211
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    const-string/jumbo v0, "satellites"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string/jumbo v0, "meanCn0"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string/jumbo v0, "maxCn0"

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method
