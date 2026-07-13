.class public final Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
.super Ljava/lang/Object;
.source "Watchdog.java"


# instance fields
.field public final mCustomTimeoutMillis:Ljava/util/Optional;

.field public final mHandler:Lcom/android/server/Watchdog$HandlerChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 250
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    return-void
.end method

.method public static withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .locals 1

    .line 276
    new-instance v0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .locals 2

    .line 267
    new-instance v0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public checker()Lcom/android/server/Watchdog$HandlerChecker;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    return-object p0
.end method

.method public customTimeoutMillis()Ljava/util/Optional;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    return-object p0
.end method
