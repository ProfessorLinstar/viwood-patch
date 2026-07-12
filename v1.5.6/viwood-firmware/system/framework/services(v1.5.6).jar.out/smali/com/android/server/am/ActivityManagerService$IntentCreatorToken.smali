.class public final Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# instance fields
.field public final mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

.field public final mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$iCC_HD38bZKMlcWa0bWj3mHK1QQ(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->completeFinalize()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRef(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 19446
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19447
    new-instance v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 19448
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static isValid(Landroid/content/Intent;)Z
    .locals 5

    .line 19465
    invoke-virtual {p0}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    .line 19467
    instance-of v1, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 19468
    check-cast v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 19470
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result v4

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, p0, v2}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final completeFinalize()V
    .locals 3

    .line 19486
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 19487
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19489
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 19490
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19492
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

.method public finalize()V
    .locals 2

    .line 19478
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsCreatorTokenCacheCleaner()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19481
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19482
    throw v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 0

    .line 19456
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreatorUid()I
    .locals 0

    .line 19452
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result p0

    return p0
.end method

.method public getKeyFields()Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    .locals 0

    .line 19461
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    return-object p0
.end method
