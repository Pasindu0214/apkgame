.class public final enum La/b/a/d$a;
.super Ljava/lang/Enum;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/b/a/d$a;

.field public static final enum b:La/b/a/d$a;

.field public static final enum c:La/b/a/d$a;

.field public static final enum d:La/b/a/d$a;

.field public static final enum e:La/b/a/d$a;

.field public static final synthetic f:[La/b/a/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, La/b/a/d$a;

    const/4 v1, 0x0

    const-string v2, "Classpath"

    invoke-direct {v0, v2, v1}, La/b/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/d$a;->a:La/b/a/d$a;

    .line 2
    new-instance v0, La/b/a/d$a;

    const/4 v2, 0x1

    const-string v3, "Internal"

    invoke-direct {v0, v3, v2}, La/b/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/d$a;->b:La/b/a/d$a;

    .line 3
    new-instance v0, La/b/a/d$a;

    const/4 v3, 0x2

    const-string v4, "External"

    invoke-direct {v0, v4, v3}, La/b/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/d$a;->c:La/b/a/d$a;

    .line 4
    new-instance v0, La/b/a/d$a;

    const/4 v4, 0x3

    const-string v5, "Absolute"

    invoke-direct {v0, v5, v4}, La/b/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/d$a;->d:La/b/a/d$a;

    .line 5
    new-instance v0, La/b/a/d$a;

    const/4 v5, 0x4

    const-string v6, "Local"

    invoke-direct {v0, v6, v5}, La/b/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/d$a;->e:La/b/a/d$a;

    const/4 v6, 0x5

    new-array v6, v6, [La/b/a/d$a;

    .line 6
    sget-object v7, La/b/a/d$a;->a:La/b/a/d$a;

    aput-object v7, v6, v1

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    aput-object v1, v6, v2

    sget-object v1, La/b/a/d$a;->c:La/b/a/d$a;

    aput-object v1, v6, v3

    sget-object v1, La/b/a/d$a;->d:La/b/a/d$a;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, La/b/a/d$a;->f:[La/b/a/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/d$a;
    .locals 1

    .line 1
    const-class v0, La/b/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/d$a;

    return-object p0
.end method

.method public static values()[La/b/a/d$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/d$a;->f:[La/b/a/d$a;

    invoke-virtual {v0}, [La/b/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/d$a;

    return-object v0
.end method
