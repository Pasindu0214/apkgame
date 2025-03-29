.class public final enum La/b/a/o/i$b;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/o/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/b/a/o/i$b;

.field public static final enum c:La/b/a/o/i$b;

.field public static final enum d:La/b/a/o/i$b;

.field public static final synthetic e:[La/b/a/o/i$b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, La/b/a/o/i$b;

    const/4 v1, 0x0

    const-string v2, "MirroredRepeat"

    const v3, 0x8370

    invoke-direct {v0, v2, v1, v3}, La/b/a/o/i$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$b;->b:La/b/a/o/i$b;

    new-instance v0, La/b/a/o/i$b;

    const/4 v2, 0x1

    const-string v3, "ClampToEdge"

    const v4, 0x812f

    invoke-direct {v0, v3, v2, v4}, La/b/a/o/i$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$b;->c:La/b/a/o/i$b;

    new-instance v0, La/b/a/o/i$b;

    const/4 v3, 0x2

    const-string v4, "Repeat"

    const/16 v5, 0x2901

    invoke-direct {v0, v4, v3, v5}, La/b/a/o/i$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$b;->d:La/b/a/o/i$b;

    const/4 v4, 0x3

    new-array v4, v4, [La/b/a/o/i$b;

    .line 2
    sget-object v5, La/b/a/o/i$b;->b:La/b/a/o/i$b;

    aput-object v5, v4, v1

    sget-object v1, La/b/a/o/i$b;->c:La/b/a/o/i$b;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, La/b/a/o/i$b;->e:[La/b/a/o/i$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, La/b/a/o/i$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/o/i$b;
    .locals 1

    .line 1
    const-class v0, La/b/a/o/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/o/i$b;

    return-object p0
.end method

.method public static values()[La/b/a/o/i$b;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/i$b;->e:[La/b/a/o/i$b;

    invoke-virtual {v0}, [La/b/a/o/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/o/i$b;

    return-object v0
.end method
