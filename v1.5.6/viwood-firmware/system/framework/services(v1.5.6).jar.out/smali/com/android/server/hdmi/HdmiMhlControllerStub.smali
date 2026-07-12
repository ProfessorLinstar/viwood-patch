.class public final Lcom/android/server/hdmi/HdmiMhlControllerStub;
.super Ljava/lang/Object;
.source "HdmiMhlControllerStub.java"


# static fields
.field public static final EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

.field public static final mLocalDevices:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->mLocalDevices:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Landroid/hardware/hdmi/HdmiPortInfo;

    sput-object v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-object v0
.end method


# virtual methods
.method public clearAllLocalDevices()V
    .locals 0

    .line 0
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 0

    .line 52
    sget-object p0, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setOption(II)V
    .locals 0

    .line 0
    return-void
.end method
