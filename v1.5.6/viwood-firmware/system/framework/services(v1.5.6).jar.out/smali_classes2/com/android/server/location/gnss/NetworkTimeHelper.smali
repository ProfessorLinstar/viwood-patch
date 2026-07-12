.class public abstract Lcom/android/server/location/gnss/NetworkTimeHelper;
.super Ljava/lang/Object;
.source "NetworkTimeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)Lcom/android/server/location/gnss/NetworkTimeHelper;
    .locals 1

    .line 64
    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)V

    return-object v0
.end method


# virtual methods
.method public abstract demandUtcTimeInjection()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract onNetworkAvailable()V
.end method

.method public abstract setPeriodicTimeInjectionMode(Z)V
.end method
