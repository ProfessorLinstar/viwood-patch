.class public Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;
.super Ljava/lang/Object;
.source "DevicePolicyEngine.java"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V
    .locals 0

    .line 1923
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1924
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->getFileName()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V

    return-void
.end method

.method public static createBackup(Ljava/lang/String;)V
    .locals 6

    .line 1929
    const-string v0, "DevicePolicyEngine"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policy_backups"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1932
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_policy_state.%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 1933
    invoke-virtual {v2, v3}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1932
    invoke-static {v1, v2}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1934
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup already exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1937
    :cond_0
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->getFileName()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup created at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1942
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getFileName()Ljava/io/File;
    .locals 3

    .line 1920
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_policy_state.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .locals 8

    .line 2140
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 2141
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    const-string v5, "DevicePolicyEngine"

    if-eqz v4, :cond_4

    .line 2142
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2143
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v6, "policy-key-entry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "policy-state-entry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag for policy entry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 2152
    const-string v4, "Skipping policy state - unknown policy definition"

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2154
    :cond_2
    invoke-static {v3, p0}, Lcom/android/server/devicepolicy/PolicyState;->readFromXml(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    goto :goto_0

    .line 2145
    :cond_3
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2147
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    goto :goto_1

    .line 2168
    :cond_5
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2163
    :cond_6
    :goto_1
    const-string p0, "Error parsing policy, policyKey is %s, and policyState is %s."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final readEnforcingAdminAndSizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 8

    .line 2186
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 2189
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    const-string v5, "DevicePolicyEngine"

    if-eqz v4, :cond_2

    .line 2190
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2191
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string v6, "enforcing-admin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "policy-sum-size"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2196
    :cond_0
    const-string/jumbo v2, "size"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 2193
    :cond_1
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 2203
    const-string p0, "Error parsing enforcingAdmins, EnforcingAdmin is null."

    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-gtz v2, :cond_4

    .line 2207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error parsing policy size, size is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2210
    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 2211
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2213
    :cond_5
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readEnforcingAdminsInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 3

    .line 2173
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2175
    const-string p0, "DevicePolicyEngine"

    const-string p1, "Error parsing enforcingAdmins, EnforcingAdmin is null."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2181
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readFromFileLocked()V
    .locals 3

    .line 2081
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DevicePolicyEngine"

    if-nez v0, :cond_0

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2086
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 2090
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 2091
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 2093
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readInnerLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2098
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2096
    :try_start_1
    const-string v0, "Error parsing resources file"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2098
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2099
    throw p0
.end method

.method public final readInnerLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 2105
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 2106
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2107
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2108
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "enforcing-admins-entry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "max-policy-size-limit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "enforcing-admin-and-size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "local-policy-entry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "global-policy-entry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 2129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyEngine"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2120
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readEnforcingAdminsInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    .line 2126
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readMaxPolicySizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    .line 2123
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readEnforcingAdminAndSizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    .line 2110
    const-string/jumbo v2, "user-id"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2111
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2112
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2114
    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2117
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x714a09ff -> :sswitch_4
        -0x4f4580c7 -> :sswitch_3
        -0x389ac19d -> :sswitch_2
        0x805c241 -> :sswitch_1
        0x3c969357 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readMaxPolicySizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    .line 2218
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    const/4 v0, 0x0

    const-string/jumbo v1, "size"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fputmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    return-void
.end method

.method public final writeEnforcingAdminSizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8

    .line 2050
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2051
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2052
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2053
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2054
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2053
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const/4 v4, 0x0

    .line 2055
    const-string v5, "enforcing-admin-and-size"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2057
    const-string v6, "enforcing-admin"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2058
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2059
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2060
    const-string/jumbo v6, "policy-sum-size"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2061
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v7

    .line 2062
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2061
    const-string/jumbo v7, "size"

    invoke-interface {p1, v4, v7, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2063
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2064
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeEnforcingAdminsInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 2035
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2036
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2037
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2038
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const/4 v3, 0x0

    .line 2039
    const-string v4, "enforcing-admins-entry"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2040
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2041
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeGlobalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 2015
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 2017
    const-string v2, "global-policy-entry"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2019
    const-string/jumbo v3, "policy-key-entry"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    invoke-virtual {v4, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2021
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    const-string/jumbo v3, "policy-state-entry"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2025
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 1979
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeLocalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1980
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeGlobalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1981
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeEnforcingAdminsInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1982
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeEnforcingAdminSizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1983
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeMaxPolicySizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public final writeLocalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 8

    .line 1989
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1990
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1991
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1992
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1993
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1992
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    .line 1994
    const-string/jumbo v5, "local-policy-entry"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1996
    const-string/jumbo v6, "user-id"

    invoke-interface {p1, v4, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1998
    const-string/jumbo v6, "policy-key-entry"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/PolicyKey;

    invoke-virtual {v7, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2000
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    const-string/jumbo v6, "policy-state-entry"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2004
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2006
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeMaxPolicySizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3

    const/4 v0, 0x0

    .line 2073
    const-string/jumbo v1, "max-policy-size-limit"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;)I

    move-result p0

    const-string/jumbo v2, "size"

    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2076
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToFileLocked()V
    .locals 6

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 1953
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1954
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 1956
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1959
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1961
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1962
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 1965
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1969
    :goto_0
    const-string v3, "Exception when writing"

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_0

    .line 1971
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    return-void
.end method
