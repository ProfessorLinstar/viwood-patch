.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"


# instance fields
.field public final mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mAborterUnrecognizedOpcode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mCecMessageHandlers:Landroid/util/SparseArray;

.field public final mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field public final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAborterIncorrectMode(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAborterRefused(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterUnrecognizedOpcode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 90
    new-instance v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 92
    new-instance v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 93
    new-instance v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 94
    new-instance v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    invoke-direct {v1, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 95
    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;

    invoke-direct {v3, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 96
    new-instance v3, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    invoke-direct {v3, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V

    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    .line 152
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 153
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addCommonHandlers()V

    .line 156
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addTvHandlers()V

    .line 158
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-void

    .line 160
    :cond_0
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-void
.end method


# virtual methods
.method public final addCommonHandlers()V
    .locals 2

    const/16 v0, 0x44

    .line 100
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    return-void
.end method

.method public final addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addTvHandlers()V
    .locals 2

    const/16 v0, 0x82

    .line 104
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x85

    .line 105
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x80

    .line 106
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x81

    .line 107
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x86

    .line 108
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x36

    .line 109
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x32

    .line 110
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x45

    .line 111
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x9d

    .line 113
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x7e

    .line 114
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x7a

    .line 115
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x83

    .line 117
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x91

    .line 118
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x84

    .line 119
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x8c

    .line 120
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x46

    .line 121
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x47

    .line 122
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x87

    .line 123
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x90

    .line 124
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xa5

    .line 125
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x8f

    .line 127
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xff

    .line 128
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x9f

    .line 129
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xa0

    .line 131
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0x72

    .line 132
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/4 v0, 0x4

    .line 134
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xd

    .line 135
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xa

    .line 140
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xf

    .line 146
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xc0

    .line 147
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    const/16 v0, 0xc5

    .line 148
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    return-void
.end method

.method public handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p0

    return p0
.end method
