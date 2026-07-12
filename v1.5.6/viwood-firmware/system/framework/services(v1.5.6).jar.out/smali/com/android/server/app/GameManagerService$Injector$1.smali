.class public Lcom/android/server/app/GameManagerService$Injector$1;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService$Injector;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 211
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 216
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
