.class public interface abstract Landroid/hardware/health/IHealthInfoCallback;
.super Ljava/lang/Object;
.source "IHealthInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 177
    const-string v2, "android$hardware$health$IHealthInfoCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/health/IHealthInfoCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract healthInfoChanged(Landroid/hardware/health/HealthInfo;)V
.end method
