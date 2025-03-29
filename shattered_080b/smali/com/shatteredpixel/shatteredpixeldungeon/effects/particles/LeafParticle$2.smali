.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle$2;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "LeafParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 1

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;

    .line 2
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color1:I

    iget p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->color2:I

    invoke-static {v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/LeafParticle;->reset(FF)V

    return-void
.end method
