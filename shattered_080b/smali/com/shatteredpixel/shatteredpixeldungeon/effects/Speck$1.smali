.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "Speck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(IZ)Lcom/watabou/noosa/particles/Emitter$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$lightMode:Z

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;->val$type:I

    iput-boolean p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;->val$lightMode:Z

    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;->val$type:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->reset(IFFI)V

    return-void
.end method

.method public lightMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck$1;->val$lightMode:Z

    return v0
.end method
