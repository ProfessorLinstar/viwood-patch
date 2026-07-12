.class public interface abstract Landroid/hardware/tv/hdmi/connection/IHdmiConnection;
.super Ljava/lang/Object;
.source "IHdmiConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 319
    const-string v2, "android$hardware$tv$hdmi$connection$IHdmiConnection"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getHpdSignal(I)B
.end method

.method public abstract getPortInfo()[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;
.end method

.method public abstract isConnected(I)Z
.end method

.method public abstract setCallback(Landroid/hardware/tv/hdmi/connection/IHdmiConnectionCallback;)V
.end method

.method public abstract setHpdSignal(BI)V
.end method
