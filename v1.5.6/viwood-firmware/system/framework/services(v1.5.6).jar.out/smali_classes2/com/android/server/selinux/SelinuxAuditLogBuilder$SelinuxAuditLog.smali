.class public Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;
.super Ljava/lang/Object;
.source "SelinuxAuditLogBuilder.java"


# instance fields
.field public mGranted:Z

.field public mPath:Ljava/lang/String;

.field public mPermissions:[Ljava/lang/String;

.field public mPermissive:Z

.field public mSCategories:[I

.field public mSType:Ljava/lang/String;

.field public mTCategories:[I

.field public mTClass:Ljava/lang/String;

.field public mTType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 160
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 162
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 164
    iput-boolean v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    .line 171
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    .line 173
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    .line 175
    iput-boolean v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    return-void
.end method
