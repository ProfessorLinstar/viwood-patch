.class public Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;
.super Ljava/lang/Object;
.source "ProxyLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$NpVYyz_7AUBxLdPXQhWgbBcYbjI(Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 185
    sget-object p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Ljava/lang/Runnable;

    if-ne v2, p0, :cond_0

    .line 185
    new-instance p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->access$000(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;Ljava/util/function/UnaryOperator;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
