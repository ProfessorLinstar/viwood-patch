.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortChanges:I = 0x38

.field static final TRANSACTION_abortFuse:I = 0x2

.field static final TRANSACTION_abortIdleMaint:I = 0x1e

.field static final TRANSACTION_addAppIds:I = 0xa

.field static final TRANSACTION_addSandboxIds:I = 0xb

.field static final TRANSACTION_benchmark:I = 0x12

.field static final TRANSACTION_bindMount:I = 0x4a

.field static final TRANSACTION_commitChanges:I = 0x39

.field static final TRANSACTION_createObb:I = 0x1a

.field static final TRANSACTION_createStubVolume:I = 0x43

.field static final TRANSACTION_createUserStorageKeys:I = 0x2a

.field static final TRANSACTION_destroyDsuMetadataKey:I = 0x4b

.field static final TRANSACTION_destroyObb:I = 0x1b

.field static final TRANSACTION_destroySandboxForApp:I = 0x33

.field static final TRANSACTION_destroyStubVolume:I = 0x44

.field static final TRANSACTION_destroyUserStorage:I = 0x31

.field static final TRANSACTION_destroyUserStorageKeys:I = 0x2b

.field static final TRANSACTION_earlyBootEnded:I = 0x42

.field static final TRANSACTION_encryptFstab:I = 0x28

.field static final TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final TRANSACTION_fbeEnable:I = 0x25

.field static final TRANSACTION_fixupAppDir:I = 0x18

.field static final TRANSACTION_forgetPartition:I = 0xe

.field static final TRANSACTION_format:I = 0x11

.field static final TRANSACTION_fstrim:I = 0x1c

.field static final TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final TRANSACTION_getStorageRemainingLifetime:I = 0x4d

.field static final TRANSACTION_getStorageSize:I = 0x4c

.field static final TRANSACTION_getUnlockedUsers:I = 0x2d

.field static final TRANSACTION_getWriteAmount:I = 0x22

.field static final TRANSACTION_getWriteBoosterBufferAvailablePercent:I = 0x4f

.field static final TRANSACTION_getWriteBoosterBufferSize:I = 0x4e

.field static final TRANSACTION_getWriteBoosterLifeTimeEstimate:I = 0x52

.field static final TRANSACTION_incFsEnabled:I = 0x46

.field static final TRANSACTION_initUser0:I = 0x26

.field static final TRANSACTION_isCheckpointing:I = 0x37

.field static final TRANSACTION_lockCeStorage:I = 0x2f

.field static final TRANSACTION_markBootAttempt:I = 0x3d

.field static final TRANSACTION_monitor:I = 0x3

.field static final TRANSACTION_mount:I = 0xf

.field static final TRANSACTION_mountAppFuse:I = 0x23

.field static final TRANSACTION_mountFstab:I = 0x27

.field static final TRANSACTION_mountIncFs:I = 0x47

.field static final TRANSACTION_moveStorage:I = 0x13

.field static final TRANSACTION_needsCheckpoint:I = 0x35

.field static final TRANSACTION_needsRollback:I = 0x36

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final TRANSACTION_onUserAdded:I = 0x6

.field static final TRANSACTION_onUserRemoved:I = 0x7

.field static final TRANSACTION_onUserStarted:I = 0x8

.field static final TRANSACTION_onUserStopped:I = 0x9

.field static final TRANSACTION_openAppFuseFile:I = 0x45

.field static final TRANSACTION_partition:I = 0xd

.field static final TRANSACTION_prepareCheckpoint:I = 0x3a

.field static final TRANSACTION_prepareSandboxForApp:I = 0x32

.field static final TRANSACTION_prepareUserStorage:I = 0x30

.field static final TRANSACTION_refreshLatestWrite:I = 0x21

.field static final TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final TRANSACTION_remountUid:I = 0x14

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_resetCheckpoint:I = 0x41

.field static final TRANSACTION_restoreCheckpoint:I = 0x3b

.field static final TRANSACTION_restoreCheckpointPart:I = 0x3c

.field static final TRANSACTION_runIdleMaint:I = 0x1d

.field static final TRANSACTION_setCeStorageProtection:I = 0x2c

.field static final TRANSACTION_setGCUrgentPace:I = 0x20

.field static final TRANSACTION_setIncFsMountOptions:I = 0x49

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setStorageBindingSeed:I = 0x29

.field static final TRANSACTION_setWriteBoosterBufferFlush:I = 0x50

.field static final TRANSACTION_setWriteBoosterBufferOn:I = 0x51

.field static final TRANSACTION_setupAppDir:I = 0x17

.field static final TRANSACTION_shutdown:I = 0x5

.field static final TRANSACTION_startCheckpoint:I = 0x34

.field static final TRANSACTION_supportsBlockCheckpoint:I = 0x3f

.field static final TRANSACTION_supportsCheckpoint:I = 0x3e

.field static final TRANSACTION_supportsFileCheckpoint:I = 0x40

.field static final TRANSACTION_unlockCeStorage:I = 0x2e

.field static final TRANSACTION_unmount:I = 0x10

.field static final TRANSACTION_unmountAppFuse:I = 0x24

.field static final TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final TRANSACTION_unmountIncFs:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 301
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_0
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_1

    .line 314
    check-cast v0, Landroid/os/IVold;

    return-object v0

    .line 316
    :cond_1
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const-string v3, "android.os.IVold"

    const/4 v10, 0x1

    if-lt p1, v10, :cond_0

    const v4, 0xffffff

    if-gt p1, v4, :cond_0

    .line 326
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1

    .line 329
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1159
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1152
    :pswitch_0
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterLifeTimeEstimate()I

    move-result v0

    .line 1153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1143
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-interface {p0, v1}, Landroid/os/IVold;->setWriteBoosterBufferOn(Z)Z

    move-result v0

    .line 1146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1133
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-interface {p0, v1}, Landroid/os/IVold;->setWriteBoosterBufferFlush(Z)Z

    move-result v0

    .line 1136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1125
    :pswitch_3
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterBufferAvailablePercent()I

    move-result v0

    .line 1126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1118
    :pswitch_4
    invoke-interface {p0}, Landroid/os/IVold;->getWriteBoosterBufferSize()I

    move-result v0

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1111
    :pswitch_5
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    move-result v0

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1104
    :pswitch_6
    invoke-interface {p0}, Landroid/os/IVold;->getStorageSize()J

    move-result-wide v0

    .line 1105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 1096
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1085
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1088
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1070
    :pswitch_9
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1076
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1061
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1063
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmountIncFs(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1045
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v0

    .line 1054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1037
    :pswitch_c
    invoke-interface {p0}, Landroid/os/IVold;->incFsEnabled()Z

    move-result v0

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 1022
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1031
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 1013
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 993
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 1005
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 986
    :pswitch_10
    invoke-interface {p0}, Landroid/os/IVold;->earlyBootEnded()V

    .line 987
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 980
    :pswitch_11
    invoke-interface {p0}, Landroid/os/IVold;->resetCheckpoint()V

    .line 981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 973
    :pswitch_12
    invoke-interface {p0}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    move-result v0

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 966
    :pswitch_13
    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    move-result v0

    .line 967
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 959
    :pswitch_14
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    move-result v0

    .line 960
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 953
    :pswitch_15
    invoke-interface {p0}, Landroid/os/IVold;->markBootAttempt()V

    .line 954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 943
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 934
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    invoke-interface {p0, v1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 927
    :pswitch_18
    invoke-interface {p0}, Landroid/os/IVold;->prepareCheckpoint()V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 921
    :pswitch_19
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 911
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 903
    :pswitch_1b
    invoke-interface {p0}, Landroid/os/IVold;->isCheckpointing()Z

    move-result v0

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 896
    :pswitch_1c
    invoke-interface {p0}, Landroid/os/IVold;->needsRollback()Z

    move-result v0

    .line 897
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 889
    :pswitch_1d
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v0

    .line 890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 881
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-interface {p0, v1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 868
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 853
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 840
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 827
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 818
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-interface {p0, v1}, Landroid/os/IVold;->lockCeStorage(I)V

    .line 821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 807
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->unlockCeStorage(I[B)V

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 799
    :pswitch_25
    invoke-interface {p0}, Landroid/os/IVold;->getUnlockedUsers()[I

    move-result-object v0

    .line 800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 789
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 791
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->setCeStorageProtection(I[B)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 780
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyUserStorageKeys(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 769
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->createUserStorageKeys(IZ)V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 760
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-interface {p0, v1}, Landroid/os/IVold;->setStorageBindingSeed([B)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 737
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v7

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 753
    invoke-interface/range {v0 .. v9}, Landroid/os/IVold;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z[Ljava/lang/String;[ZJ)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 722
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 715
    :pswitch_2c
    invoke-interface {p0}, Landroid/os/IVold;->initUser0()V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 709
    :pswitch_2d
    invoke-interface {p0}, Landroid/os/IVold;->fbeEnable()V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 699
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 687
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 679
    :pswitch_30
    invoke-interface {p0}, Landroid/os/IVold;->getWriteAmount()I

    move-result v0

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 673
    :pswitch_31
    invoke-interface {p0}, Landroid/os/IVold;->refreshLatestWrite()V

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 653
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 667
    invoke-interface/range {v0 .. v7}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 645
    :pswitch_33
    invoke-interface {p0}, Landroid/os/IVold;->getStorageLifeTime()I

    move-result v0

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 637
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-interface {p0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 626
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 615
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 606
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 594
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 572
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 561
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 548
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 535
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 524
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->remountUid(II)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 511
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v3

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 500
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 489
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 480
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 465
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v4

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 454
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 441
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 432
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-interface {p0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 421
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 410
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-interface {p0, v1, v2}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 401
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 392
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 383
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserRemoved(I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 370
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-interface {p0, v1, v2, v3}, Landroid/os/IVold;->onUserAdded(III)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 363
    :pswitch_4d
    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 357
    :pswitch_4e
    invoke-interface {p0}, Landroid/os/IVold;->reset()V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 351
    :pswitch_4f
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 345
    :pswitch_50
    invoke-interface {p0}, Landroid/os/IVold;->abortFuse()V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 337
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-interface {p0, v1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
