.class public interface abstract Landroid/hardware/oemlock/IOemLock;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 365
    const-string v2, "android$hardware$oemlock$IOemLock"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/oemlock/IOemLock;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isOemUnlockAllowedByCarrier()Z
.end method

.method public abstract isOemUnlockAllowedByDevice()Z
.end method

.method public abstract setOemUnlockAllowedByCarrier(Z[B)I
.end method

.method public abstract setOemUnlockAllowedByDevice(Z)V
.end method
