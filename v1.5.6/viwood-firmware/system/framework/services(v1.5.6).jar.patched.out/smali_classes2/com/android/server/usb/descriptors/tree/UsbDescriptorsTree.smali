.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;
.super Ljava/lang/Object;
.source "UsbDescriptorsTree.java"


# instance fields
.field public mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

.field public mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

.field public mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 71
    iget-object p0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->addConfigDescriptorNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;)V

    return-void
.end method

.method public final addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    return-void
.end method

.method public final addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->addEndpointNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;)V

    return-void
.end method

.method public final addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    invoke-direct {v0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mInterfaceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 79
    iget-object p0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mConfigNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->addInterfaceNode(Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;)V

    return-void
.end method

.method public parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 4

    .line 102
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 106
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    check-cast v1, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_1

    .line 119
    :cond_1
    check-cast v1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_1

    .line 115
    :cond_2
    check-cast v1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_1

    .line 111
    :cond_3
    check-cast v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->addDeviceDescriptor(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->mDeviceNode:Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
