.class Lcom/android/server/app/GameManagerService$Injector;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSystemPropertiesWrapper()Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;
    .locals 1

    .line 204
    new-instance v0, Lcom/android/server/app/GameManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameManagerService$Injector$1;-><init>(Lcom/android/server/app/GameManagerService$Injector;)V

    return-object v0
.end method
