.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x19

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copySystemProfile:I = 0x18

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createFsveritySetupAuthToken:I = 0x33

.field static final TRANSACTION_createOatDir:I = 0x21

.field static final TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x24

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x17

.field static final TRANSACTION_enableFsverity:I = 0x34

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x1f

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getOdexVisibility:I = 0x32

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final TRANSACTION_invalidateMounts:I = 0x27

.field static final TRANSACTION_isQuotaSupported:I = 0x28

.field static final TRANSACTION_linkFile:I = 0x22

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final TRANSACTION_mergeProfiles:I = 0x16

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final TRANSACTION_moveAb:I = 0x23

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final TRANSACTION_prepareAppProfile:I = 0x29

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1e

.field static final TRANSACTION_rmdex:I = 0x15

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2a

.field static final TRANSACTION_tryMountDataMirror:I = 0x2e

.field static final TRANSACTION_updateWaveformFile:I = 0x35


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 212
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    .line 225
    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    .line 227
    :cond_1
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 236
    const-string v3, "android.os.IInstalld"

    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    .line 237
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1

    .line 240
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1003
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 994
    :pswitch_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 996
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->updateWaveformFile(Ljava/lang/String;)I

    move-result v0

    .line 997
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 980
    :pswitch_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    .line 982
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 984
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 985
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 987
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 968
    :pswitch_2
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 970
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 971
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-interface {v0, v1, v3}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v0

    .line 973
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 952
    :pswitch_3
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 958
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 961
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 939
    :pswitch_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 943
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 944
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 946
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 932
    :pswitch_5
    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 933
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 924
    :pswitch_6
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 927
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 915
    :pswitch_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 902
    :pswitch_8
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 904
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 906
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 907
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 909
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 883
    :pswitch_9
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 896
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 862
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 876
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 877
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 844
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 854
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 855
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    .line 824
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 836
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 837
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 814
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    .line 817
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 807
    :pswitch_e
    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 808
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 790
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 801
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    .line 770
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 782
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 783
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 754
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 763
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    .line 739
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 724
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 711
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 696
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 683
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 690
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 672
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 661
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 645
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 654
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 634
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 625
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 614
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 598
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 607
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 580
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 591
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    .line 566
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 555
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 546
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 549
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 506
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move v1, v9

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, v0

    move-object/from16 v0, p3

    .line 538
    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    const/4 v9, 0x1

    goto/16 :goto_1

    :pswitch_23
    move-object v11, v2

    move-object v0, v8

    .line 485
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 493
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 499
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 500
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_24
    move-object v11, v2

    .line 470
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 476
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 477
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 478
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 479
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_25
    move-object v11, v2

    .line 458
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 463
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    .line 464
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_26
    move-object v11, v2

    .line 444
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 451
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_27
    move-object v11, v2

    .line 428
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 434
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 435
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 437
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_1

    :pswitch_28
    move-object v11, v2

    .line 412
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 419
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 421
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_1

    :pswitch_29
    move-object v11, v2

    .line 390
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 398
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 400
    invoke-virtual {v11}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 402
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 403
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 405
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_1

    :pswitch_2a
    move-object v11, v2

    .line 379
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 384
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2b
    move-object v11, v2

    .line 362
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 370
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 371
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 373
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2c
    move-object v11, v2

    .line 345
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 351
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 354
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    .line 355
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 356
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2d
    move-object v11, v2

    .line 330
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 336
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 337
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 339
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2e
    move-object v11, v2

    .line 311
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 319
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 321
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 324
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2f
    move-object v11, v2

    .line 302
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 303
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 305
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_30
    move-object v11, v2

    .line 292
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 293
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 295
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_31
    move-object v11, v2

    .line 282
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 283
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 285
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 275
    :pswitch_32
    invoke-interface {v0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 276
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_33
    move-object v11, v2

    .line 263
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 268
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 270
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_34
    move-object v11, v2

    .line 248
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 257
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v9

    :pswitch_data_0
    .packed-switch 0x1
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
