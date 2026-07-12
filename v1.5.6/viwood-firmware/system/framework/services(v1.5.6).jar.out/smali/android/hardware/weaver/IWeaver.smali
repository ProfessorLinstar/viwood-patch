.class public interface abstract Landroid/hardware/weaver/IWeaver;
.super Ljava/lang/Object;
.source "IWeaver.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 299
    const-string v2, "android$hardware$weaver$IWeaver"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getConfig()Landroid/hardware/weaver/WeaverConfig;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract read(I[B)Landroid/hardware/weaver/WeaverReadResponse;
.end method

.method public abstract write(I[B[B)V
.end method
