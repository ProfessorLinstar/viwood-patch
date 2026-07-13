.class public final Lcom/android/server/devicepolicy/PolicyState;
.super Ljava/lang/Object;
.source "PolicyState.java"


# instance fields
.field public mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

.field public final mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

.field public final mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 63
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    return-void
.end method

.method public static readFromXml(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 11

    .line 257
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 259
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    const-string v5, "PolicyState"

    if-eqz v4, :cond_c

    .line 260
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v6, "policy with definition "

    const-string v7, "admin-policy-entry"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "resolved-value-entry"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 298
    const-string v4, "Error Parsing TAG_RESOLVED_VALUE_ENTRY, policyDefinition is null"

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    move-result-object v3

    if-nez v3, :cond_0

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error Parsing TAG_RESOLVED_VALUE_ENTRY for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentResolvedPolicy is null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    move-object v7, v2

    move-object v8, v7

    .line 266
    :cond_4
    :goto_1
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 267
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 268
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    const-string v10, "enforcing-admin-entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "policy-value-entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 277
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    move-result-object v8

    if-nez v8, :cond_4

    .line 279
    const-string v9, "Error Parsing TAG_POLICY_VALUE_ENTRY, PolicyValue is null"

    invoke-static {v5, v9}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_6
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    move-result-object v7

    if-nez v7, :cond_4

    .line 272
    const-string v9, "Error Parsing TAG_ENFORCING_ADMIN_ENTRY, EnforcingAdmin is null"

    invoke-static {v5, v9}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 286
    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 288
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error Parsing TAG_ADMIN_POLICY_ENTRY for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_9

    .line 289
    const-string/jumbo v6, "unknown policy"

    goto :goto_2

    .line 290
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", EnforcingAdmin is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v6, "null"

    if-nez v7, :cond_a

    move-object v7, v6

    :cond_a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", value is : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_b

    move-object v8, v6

    .line 292
    :cond_b
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    if-eqz p0, :cond_d

    .line 315
    new-instance p1, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {p1, p0, v0, v3}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;)V

    return-object p1

    .line 317
    :cond_d
    const-string p0, "Error parsing policyState, policyDefinition is null"

    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z
    .locals 1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy()Z

    move-result p0

    return p0
.end method

.method public addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Ljava/util/LinkedHashMap;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result p0

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 202
    const-string v0, "Per-admin Policy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 208
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 210
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    .line 214
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 216
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 216
    const-string v1, "Resolved Policy (%s):\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 218
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 219
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 222
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    return-object p0
.end method

.method public getParcelablePolicyState()Landroid/app/admin/PolicyState;
    .locals 5

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 184
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getParcelableAdmin()Landroid/app/admin/EnforcingAdmin;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_0
    new-instance v1, Landroid/app/admin/PolicyState;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;->getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Landroid/app/admin/PolicyState;-><init>(Ljava/util/LinkedHashMap;Landroid/app/admin/PolicyValue;Landroid/app/admin/ResolutionMechanism;)V

    return-object v1
.end method

.method public getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;
    .locals 1

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0
.end method

.method public removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .locals 1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy()Z

    move-result p0

    return p0
.end method

.method public removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Ljava/util/LinkedHashMap;)Z
    .locals 1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result p0

    return p0
.end method

.method public final resolvePolicy()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->resolvePolicy(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 170
    iput-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    return v1
.end method

.method public resolvePolicy(Ljava/util/LinkedHashMap;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 147
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 151
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->resolvePolicy(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 153
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    return v0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    const-string/jumbo v0, "resolved-value-entry"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 229
    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 228
    invoke-virtual {v2, p1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->savePolicyValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V

    .line 230
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 234
    const-string v3, "admin-policy-entry"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 237
    const-string/jumbo v4, "policy-value-entry"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v6, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 239
    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyValue;

    invoke-virtual {v6}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 238
    invoke-virtual {v5, p1, v6}, Lcom/android/server/devicepolicy/PolicyDefinition;->savePolicyValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V

    .line 240
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :cond_1
    const-string v4, "enforcing-admin-entry"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 245
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPolicyKey - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPolicyDefinition= \n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmPoliciesSetByAdmins= \n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\nmCurrentResolvedPolicy= \n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
