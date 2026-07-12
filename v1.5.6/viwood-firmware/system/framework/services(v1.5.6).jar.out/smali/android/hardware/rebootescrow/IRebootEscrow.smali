.class public interface abstract Landroid/hardware/rebootescrow/IRebootEscrow;
.super Ljava/lang/Object;
.source "IRebootEscrow.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 250
    const-string v2, "android$hardware$rebootescrow$IRebootEscrow"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract retrieveKey()[B
.end method

.method public abstract storeKey([B)V
.end method
