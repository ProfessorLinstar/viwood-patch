.class final enum Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
.super Ljava/lang/Enum;
.source "AmbientContextManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

.field public static final enum DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

.field public static final enum WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 2

    .line 70
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    filled-new-array {v0, v1}, [Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 72
    new-instance v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    const-string v1, "WEARABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 70
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->$values()[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v0

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->$VALUES:[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 1

    .line 70
    const-class v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 1

    .line 70
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->$VALUES:[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-virtual {v0}, [Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    return-object v0
.end method
